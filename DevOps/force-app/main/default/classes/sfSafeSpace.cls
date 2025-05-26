public class sfSafeSpace implements Queueable, Schedulable 
{
    
    //Schedulable exceution "Sentinal"
    public void execute(SchedulableContext sc) 
    {
        sentinal();
    }
    
    //used to check that there is always a Queueable job enqueued or running
    public static void sentinal()
    {
        //!2024-04-12 HP: make sure we don't send safe space from out of the sandbox while working on the event reminder SMS stuffs
        if(sfHelpers.orgDetails.isSandbox == false){processDueOutbound();}

        //2024-04-12 HP: this is a bit of a hack, but as this sentinal will run every minute, 
        //we can use it to check if any event nofications need to be sent
        sfEventTriggerHandler.triggerDueNotifications();
        
        //future state, allow chaiing on jobs and not use so many jobs...
    }


//---------------------------------------------------------------
//-----------QUEUEABLE STUFF-------------------------------------
//---------------------------------------------------------------


    //Queueable main execution
    //this will go find safe space v2's to send messages out for
    //?2024-04-12 HP: how??
    public void execute(QueueableContext context) 
    {
        
    }

//---------------------------------------------------------------
//--PROCESS OUTBOUND---------------------------------------------
//---------------------------------------------------------------
    //a once off "fire and forget" that will send all items due now, and will not chain jobs
    public static void processDueOutbound()
    {
        processDueOutbound(System.Now().addMinutes(5), false);//false will not change another enqueued job once this one finishes
    }


    //the main function that will fire as needed, and chain jobs as appropriate
    public static void processDueOutbound(DateTime dueDateTime, Boolean chainJobs)
    {
        List<Safe_Space_Assessment__c> ssAssessments = new List<Safe_Space_Assessment__c>();
        ssAssessments = [select Id, Case__c, Session__c, Contact_Full_Name__c,
                             Worker__c, Worker__r.MobilePhone, Worker__r.FullName__c,
                             Buddy__c, Buddy__r.MobilePhone, contact__c,
                             Manager__c, Manager__r.MobilePhone, last_visit_contact_id__c,
                             Arrival_SMS_Status__c, Arrival_Date_Time__c, Arrival_Buddy_CheckIn_Date_Time__c, Arrival_Manager_Notification_Date_Time__c,
                             Departure_SMS_Status__c, Departure_Date_Time__c, Departure_Buddy_CheckIn_Date_Time__c, Departure_Manager_Notification_Date_Time__c, Departure_Delay_In_Minutes__c
                         from Safe_Space_Assessment__c
                         where Do_Not_Send_Safe_Space_SMSs__c = false //mainly used for making changes to old data to prevent sending masses of old sms
                             and (Approval_Status__c = 'Approved' OR Approval_Status__c = 'Provisional Approval') // updated to include provisional approval
                             and (Session_Status__c = 'Scheduled' OR Session_Status__c = 'Planning') // updated to include planning status TT-35587
                         	 and Safe_Space_Group_Child__c = false // TT-26527 TT_CP used to group SMS messages for assessments occurring on the same day.
                             and ( //all the different criteria that mean we need to send an sms
                                      ((Arrival_SMS_Status__c = 'Not Yet Sent' OR Arrival_SMS_Status__c = 'Sent - Delayed Arrival') AND Arrival_Date_Time__c < :dueDateTime)
                                   OR ((Arrival_SMS_Status__c = 'Sent - No Reply Yet' OR Arrival_SMS_Status__c = 'Sent - Delayed Arrival') AND Arrival_Date_Time__c < :dueDateTime)
                                   OR (Arrival_SMS_Status__c = 'Buddy Check-In Request Sent' AND Arrival_Manager_Notification_Date_Time__c < :dueDateTime)
                                   OR ((Departure_SMS_Status__c = 'Not Yet Sent' OR Departure_SMS_Status__c = 'Sent - Delayed Departure') AND Latest_Departure_Date_Time__c < :dueDateTime)
                                   OR ((Departure_SMS_Status__c = 'Sent - No Reply Yet' OR Departure_SMS_Status__c = 'Sent - Delayed Departure') AND Latest_Departure_Buddy_CheckIn_Date_Time__c < :dueDateTime)
                                   OR (Departure_SMS_Status__c = 'Buddy Check-In Request Sent' AND Latest_Departure_Mgr_Notification_DT__c < :dueDateTime)
                                 )];

        if(ssAssessments != null && ssAssessments.size() > 0)
        {//we've got some SMS to send

            //a map to save those Safe Space Assessments that we'll update later
            Map<Id, Safe_Space_Assessment__c> ssAssessmentsToUpdate = new Map<Id, Safe_Space_Assessment__c>();

            //List of SMS messages to insert - inserting an SMS will automatically send the sms if it's oubound and attached to contact with a mobile
            //2022-04-12 HP: currently this send is done @future, which may cause drama if it's from within an enqueued job?
            List<SMS__c> smsToInsert = new List<SMS__c>();

            //loop over the assessments and send the first relevant sms, then break that loop iteration and move onto the next one.
            for(Safe_Space_Assessment__c ssa : ssAssessments)
            {
                //use the same logic as in the where statement of the query to see if we need to action each assessment

                //ARRIVAL
                if((ssa.Arrival_SMS_Status__c == 'Not Yet Sent' || ssa.Arrival_SMS_Status__c == 'Sent - Delayed Arrival') && ssa.Arrival_Date_Time__c < dueDateTime)
                {//we need to send the initial arrival sms (or a delayed one)

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Worker__r.MobilePhone;
                    sms.User__c = ssa.Worker__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.Inbound__c = false;
                    sms.contact__c = ssa.contact__c;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Arrival;

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Arrival_SMS_Status__c = 'Sent - No Reply Yet';

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }
                string latestContactId;
                if(ssa.last_visit_contact_id__c != null)
                {
                    latestcontactId = ssa.last_visit_contact_id__c;
                } else {
                    latestcontactId = ssa.Contact__c;
                }

                //BUDDY NOTIFICATION
                if((ssa.Arrival_SMS_Status__c == 'Sent - No Reply Yet' || ssa.Arrival_SMS_Status__c == 'Sent - Delayed Departure') && ssa.Arrival_Buddy_CheckIn_Date_Time__c < dueDateTime)
                {//we need to send the buddy checkin sms

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Buddy__r.MobilePhone;
                    sms.User__c = ssa.Buddy__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.Contact__c = latestContactId;
                    sms.Inbound__c = false;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Buddy_Notification;
                    if(ssa?.Worker__r?.FullName__c != null) { sms.Body__c = sms.Body__c.replace('<FullName>', ssa.Worker__r.FullName__c); }

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Arrival_SMS_Status__c = 'Buddy Check-In Request Sent';

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }

                //MANAGER NOTIFICATION
                if(ssa.Arrival_SMS_Status__c == 'Buddy Check-In Request Sent' && ssa.Arrival_Manager_Notification_Date_Time__c < dueDateTime)
                {//we need to send the buddy checkin sms

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Manager__r.MobilePhone;
                    sms.User__c = ssa.Manager__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.contact__c = latestContactId;
                    sms.Inbound__c = false;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Manager_Notification;
                    if(sms.Body__c != null && ssa?.Worker__r?.FullName__c != null) { sms.Body__c = sms.Body__c.replace('<FullName>', ssa.Worker__r.FullName__c); }

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Arrival_SMS_Status__c = 'Manager Notified of Potential Issue';

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }


                //DEPARTURE
                if((ssa.Departure_SMS_Status__c == 'Not Yet Sent' || ssa.Departure_SMS_Status__c == 'Sent - Delayed Departure') && ssa.Departure_Date_Time__c < dueDateTime && ssa.Arrival_SMS_Status__c != 'Sent - No Reply Yet' && ssa.Arrival_SMS_Status__c != 'Sent - Delayed Departure')
                {//we need to send the initial departure sms (or a delayed one)

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Worker__r.MobilePhone;
                    sms.User__c = ssa.Worker__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.contact__c = latestContactId;
                    sms.Inbound__c = false;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Departure;

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Departure_SMS_Status__c = 'Sent - No Reply Yet';

                    // Stop any immediate escalation by adding departure delay.
                    // This happens on short appointments that get delayed (e.g. delaying a 15 minute appointment by 15 minutes)
                    if(ssa.Departure_Buddy_CheckIn_Date_Time__c < dueDateTime)
                    {
                        System.debug(ssa.Departure_Buddy_CheckIn_Date_Time__c);
                        System.debug(dueDateTime);
                        ssa.Departure_Delay_In_Minutes__c += (dueDateTime.getTime() - ssa.Departure_Date_Time__c.getTime()) / 60 / 1000;
                        System.debug(ssa.Departure_Delay_In_Minutes__c);
                    }

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }

                //BUDDY NOTIFICATION
                if((ssa.Departure_SMS_Status__c == 'Sent - No Reply Yet' || ssa.Departure_SMS_Status__c == 'Sent - Delayed Departure') && ssa.Departure_Buddy_CheckIn_Date_Time__c < dueDateTime)
                {//we need to send the buddy checkin sms

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Buddy__r.MobilePhone;
                    sms.User__c = ssa.Buddy__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.contact__c = latestContactId;
                    sms.Inbound__c = false;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Buddy_Notification;
                    if(sms.Body__c != null && ssa?.Worker__r?.FullName__c != null) { sms.Body__c = sms.Body__c.replace('<FullName>', ssa.Worker__r.FullName__c); }

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Departure_SMS_Status__c = 'Buddy Check-In Request Sent';

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }



                //MANAGER NOTIFICATION
                if(ssa.Departure_SMS_Status__c == 'Buddy Check-In Request Sent' && ssa.Departure_Manager_Notification_Date_Time__c < dueDateTime)
                {//we need to send the buddy checkin sms

                    //setup the SMS message we want to send
                    SMS__c sms = new SMS__c();
                    sms.Mobile__c = ssa.Manager__r.MobilePhone;
                    sms.User__c = ssa.Manager__c;
                    sms.Safe_Space_Assessment__c = ssa.Id;
                    sms.Session__c = ssa.Session__c;
                    sms.Case__c = ssa.Case__c;
                    sms.contact__c = latestContactId;
                    sms.Inbound__c = false;
                    sms.Clicksend_Custom_String__c = '{"Id":"' + ssa.Id + '"}';//json of the safe space assessment's id

                    //body of sms
                    sms.Body__c = Label.SMS_SafeSpace_Manager_Notification;
                    if(sms.Body__c != null && ssa?.Worker__r?.FullName__c != null) { sms.Body__c = sms.Body__c.replace('<FullName>', ssa.Worker__r.FullName__c); }

                    smsToInsert.add(sms);

                    //set the status to "Sent - No Reply Yet" in both instances, and we'll wait for a reply...
                    ssa.Departure_SMS_Status__c = 'Manager Notified of Potential Issue';

                    //add this to our map to update
                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                    continue; //break out of this iteration of the Safe_Space_Assessment__c loop
                }
            }
            for (SMS__c s : smsToInsert)
            {
                system.debug('##: ' + s);
            }
            if(smsToInsert != null && smsToInsert.size() > 0)
            {
                Database.saveResult[] srList = database.insert(smsToInsert, false);
                String errors = '';
                for (Database.SaveResult sr : srList)
                {
                    if (!sr.isSuccess())
                    {
                        for (Database.Error err : sr.getERrors())
                        {
                            errors += err.getStatusCode() + ': ' + err.getMessage() + ' | fields: ' + err.getFields() + '\r\n';
                        }

                    }
                }

                if (errors != '')
                {
                    String body = 'The following errors occured when saving sms records for safe space assessments: \r\n\r\n';
                    body += errors;
                    sendErrorMessage(errors);
                }

            }


            for (SMS__c s : smsToInsert)
            {// go through list of sms's inserted, if any don't have an id (error inserting), remove the SSA from the ssAssessmentsToUpdate map
                if (s.Id == null && ssAssessmentsToUpdate.containsKey(s.Safe_Space_Assessment__c))
                {
                    ssAssessmentsToUpdate.remove(s.Safe_Space_Assessment__c);
                }
            }

            //update and safe space assessments as needed
            if(ssAssessmentsToUpdate.values().size() > 0){update ssAssessmentsToUpdate.values(); ssAssessmentsToUpdate = new Map<Id, Safe_Space_Assessment__c>();}
        }

    }

//---------------------------------------------------------------
//--PROCESS INBOUND----------------------------------------------
//---------------------------------------------------------------
    public static void processInbound(List<SMS__c> smsMessages)
    {

        Map<Id, Safe_Space_Assessment__c> ssAssessmentsToUpdate = new Map<Id, Safe_Space_Assessment__c>();
        List<SMS__c> smsToInsert = new List<SMS__c>();

        //cycle throught the sms's and pull out and safe space assessment ids, then query those into a map to be used later
        Set<Id> ssAssessmentIds = new Set<Id>();
        for(SMS__c sms : smsMessages)
        {
            if(sms.Safe_Space_Assessment__c != null){ssAssessmentIds.add(sms.Safe_Space_Assessment__c);}
        }
        Map<Id, Safe_Space_Assessment__c> ssAssessments = new Map<Id, Safe_Space_Assessment__c>
        (
            [SELECT Id, Worker__c, Worker__r.FullName__c, Manager__c, Manager__r.MobilePhone,
                 Arrival_SMS_Status__c, Arrival_Delay_In_Minutes__c,
                 Departure_SMS_Status__c, Departure_Delay_In_Minutes__c
             FROM Safe_Space_Assessment__c
             WHERE Id = :ssAssessmentIds]
        );

        Set<Id> workerIds = new Set<Id>();
        for(Safe_Space_Assessment__c ssa : ssAssessments.values())
        {
            if(ssa.Worker__c != null)
            {
                workerIds.add(ssa.Worker__c);
            }
        }

        Datetime tenMinutesAgo = Datetime.now().addMinutes(-10);
        List<String> targetArrivalStatuses = new List<String>{'Sent - No Reply Yet', 'Sent - Delayed Arrival', 'Buddy Check-In Request Sent', 'Manager Notified of Potential Issue'};
        List<String> targetDepartureStatuses = new List<String>{'Sent - No Reply Yet', 'Sent - Delayed Departure', 'Buddy Check-In Request Sent', 'Manager Notified of Potential Issue'};

        // Build a list of Assessments per-worker that are still waiting for some response,
        // by looking at recently received SMS messages.
        // This will be used if the Assessment being responded to is not waiting for a response.
        List<SMS__c> recentSentSMSList = [
                SELECT Id,
                        Clicksend_Message_Id__c,
                        Clicksend_Original_Message_Id__c,
                        Safe_Space_Assessment__c,
                        Safe_Space_Assessment__r.Id,
                        Safe_Space_Assessment__r.Worker__c,
                        Safe_Space_Assessment__r.Worker__r.FullName__c,
                        Safe_Space_Assessment__r.Manager__c,
                        Safe_Space_Assessment__r.Manager__r.MobilePhone,
                        Safe_Space_Assessment__r.Arrival_SMS_Status__c,
                        Safe_Space_Assessment__r.Arrival_Delay_In_Minutes__c,
                        Safe_Space_Assessment__r.Departure_SMS_Status__c,
                        Safe_Space_Assessment__r.Departure_Delay_In_Minutes__c
                FROM SMS__c
                WHERE CreatedDate > :tenMinutesAgo
                AND Inbound__c = FALSE
                AND Safe_Space_Assessment__r.Worker__c IN :workerIds
                AND Safe_Space_Assessment__c != NULL
                AND (Safe_Space_Assessment__r.Arrival_SMS_Status__c IN :targetArrivalStatuses OR Safe_Space_Assessment__r.Departure_SMS_Status__c IN :targetDepartureStatuses)
                ORDER BY CreatedDate DESC
        ];
        Map<Id, SMS__c> backupSsaSmsByWorkedId = new Map<Id, SMS__c>();
        for(SMS__c recentSMS : recentSentSMSList)
        {
            if(recentSMS.Safe_Space_Assessment__r != null)
            {
                Id workerId = recentSMS.Safe_Space_Assessment__r.Worker__c;
                if(backupSsaSmsByWorkedId.containsKey(workerId) == false)
                {
                    backupSsaSmsByWorkedId.put(workerId, recentSMS);
                }
            }
        }

        Map<Id, SMS__c> smsToUpdate = new Map<Id, SMS__c>();

        for(SMS__c sms : smsMessages)
        {
            if(sms.Inbound__c == true && sms.Safe_Space_Assessment__c != null)
            {
                Safe_Space_Assessment__c currentSSA = ssAssessments.get(sms.Safe_Space_Assessment__c);
                //extract the sms body for easy processing later
                String body = sms.Body__c;

                if(body != null)
                {
                    //trim whitepace and cast to lowercase
                    body = body.tolowercase().trim();

                    if(sfHelpers.orgDetails.isSandbox == true)
                    {//in a sandbox, remove the prefixed "sandbox"
                        if(body.length() > 7 && body.left(7) == 'sandbox')
                        {
                            body = body.right(body.length() - 7);
                            body = body.trim(); //they may reply with 'sandbox' or 'sandbox ', so trim any spaces
                        }
                    }

                    //make sure there is some body to deal with...
                    if(body != null && body.length() > 0)
                    {

                        //if the first letter of the reply is H (for Help or Hende) then it's an emergency
                        if(body.left(1) == 'h')
                        {//(panic) send sms to manager but continue with normal process?


                            //send emergency sms to manager
                            SMS__c smsOut = new SMS__c();
                            smsOut.Mobile__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Manager__r.MobilePhone;
                            smsOut.User__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Manager__c;
                            smsOut.Safe_Space_Assessment__c = sms.Safe_Space_Assessment__c;
                            smsOut.Session__c = sms.Session__c;
                            smsOut.Case__c = sms.Case__c;
                            smsOut.Inbound__c = false;

                            String workerFullName = ssAssessments.get(sms.Safe_Space_Assessment__c).Worker__r?.FullName__c;
                            //body of sms
                            smsOut.Body__c = Label.SMS_SafeSpace_Emergency_Notification;
                            if(body != null && workerFullName != null) { smsOut.Body__c = smsOut.Body__c.replace('<FullName>', ssAssessments.get(sms.Safe_Space_Assessment__c).Worker__r.FullName__c); }                            

                            smsToInsert.add(smsOut);


                            continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                        }

                        //if the first letter of the reply is C, it's a cancel request
                        if(body.left(1) == 'c')
                        {//cancle the visit / session

                                Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                ssa.Id = sms.Safe_Space_Assessment__c;
                                ssa.Arrival_SMS_Status__c = 'Sent - Cancellation Received';
                                ssa.Departure_SMS_Status__c = 'Cancellation Received';
                                ssAssessmentsToUpdate.put(ssa.id, ssa);

                            continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                        }

                        //if the first letter of the reply is 'Y', they've arrived / departed - figure out which it is and update the safe space assessment as appropriate
                        if(body.left(1) == 'y')
                        {//arrived or departed

                            if(currentSSA.Arrival_SMS_Status__c == 'Sent - No Reply Yet'
                               || currentSSA.Arrival_SMS_Status__c == 'Sent - Delayed Arrival'
                                || currentSSA.Arrival_SMS_Status__c == 'Buddy Check-In Request Sent'
                                || currentSSA.Arrival_SMS_Status__c == 'Manager Notified of Potential Issue')
                            {
                                Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                ssa.Id = sms.Safe_Space_Assessment__c;
                                ssa.Arrival_SMS_Status__c = 'Sent - Arrived';
                                ssAssessmentsToUpdate.put(ssa.id, ssa);
                                
                                //send a confirmation message that the arrival message was received
                                SMS__c smsOut = new SMS__c();
                                smsOut.Mobile__c = sms.Mobile__c;
                                smsOut.User__c = sms.User__c;
                                smsOut.Safe_Space_Assessment__c = sms.Safe_Space_Assessment__c;
                                smsOut.Session__c = sms.Session__c;
                                smsOut.Case__c = sms.Case__c;
                                smsOut.Inbound__c = false;
                                smsOut.In_Reply_To__c = sms.Id;
        
                                //body of sms
                                smsOut.Body__c = Label.SMS_SafeSpace_Confirmed_Arrival;
                                
                                smsToInsert.add(smsOut);
								
                                continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                            }


                            if(currentSSA.Departure_SMS_Status__c == 'Sent - No Reply Yet'
                               || currentSSA.Departure_SMS_Status__c == 'Sent - Delayed Departure'
                               || currentSSA.Departure_SMS_Status__c == 'Buddy Check-In Request Sent'
                               || currentSSA.Departure_SMS_Status__c == 'Manager Notified of Potential Issue')
                            {
                                Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                ssa.Id = sms.Safe_Space_Assessment__c;
                                ssa.Departure_SMS_Status__c = 'Sent - Departed (Safe)';
                                ssAssessmentsToUpdate.put(ssa.id, ssa);
                                
                                //send a confirmation message that the arrival message was received
                                SMS__c smsOut = new SMS__c();
                                smsOut.Mobile__c = sms.Mobile__c;
                                smsOut.User__c = sms.User__c;
                                smsOut.Safe_Space_Assessment__c = sms.Safe_Space_Assessment__c;
                                smsOut.Session__c = sms.Session__c;
                                smsOut.Case__c = sms.Case__c;
                                smsOut.Inbound__c = false;
                                smsOut.In_Reply_To__c = sms.Id;
        
                                //body of sms
                                smsOut.Body__c = Label.SMS_SafeSpace_Confirmed_Departure;
                                
                                smsToInsert.add(smsOut);

                                continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                            }

                            // The Worker is responding to something, but it was not the linked SSA.
                            // See if we can work out what by using the backup records
                            if(currentSSA.Worker__c != null && backupSsaSmsByWorkedId.containsKey(currentSSA.Worker__c))
                            {
                                SMS__c backupSsaSMS = backupSsaSmsByWorkedId.get(currentSSA.Worker__c);
                                Safe_Space_Assessment__c backupSSA = backupSsaSMS.Safe_Space_Assessment__r;

                                if(backupSSA.Arrival_SMS_Status__c == 'Sent - No Reply Yet'
                                        || backupSSA.Arrival_SMS_Status__c == 'Sent - Delayed Arrival'
                                        || backupSSA.Arrival_SMS_Status__c == 'Buddy Check-In Request Sent'
                                        || backupSSA.Arrival_SMS_Status__c == 'Manager Notified of Potential Issue')
                                {
                                    // SMS is linked incorrectly. Relink to backup SSA.
                                    // (need to create new SMS due to being in afterInsert)
                                    SMS__c relinkedSms = relinkSMS(smsToUpdate, sms, backupSsaSMS, backupSSA.Id);

                                    // Do the original action as if the backup SSA was the one linked.
                                    Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                    ssa.Id = relinkedSms.Safe_Space_Assessment__c;
                                    ssa.Arrival_SMS_Status__c = 'Sent - Arrived';
                                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                                    continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                                }


                                if(backupSSA.Departure_SMS_Status__c == 'Sent - No Reply Yet'
                                        || backupSSA.Departure_SMS_Status__c == 'Sent - Delayed Departure'
                                        || backupSSA.Departure_SMS_Status__c == 'Buddy Check-In Request Sent'
                                        || backupSSA.Departure_SMS_Status__c == 'Manager Notified of Potential Issue')
                                {
                                    // SMS is linked incorrectly. Relink to backup SSA.
                                    // (need to create new SMS due to being in afterInsert)
                                    SMS__c relinkedSms = relinkSMS(smsToUpdate, sms, backupSsaSMS, backupSSA.Id);

                                    // Do the original action as if the backup SSA was the one linked.
                                    Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                    ssa.Id = relinkedSms.Safe_Space_Assessment__c;
                                    ssa.Departure_SMS_Status__c = 'Sent - Departed (Safe)';
                                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                                    continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                                }
                            }
                        }

                        if(body.left(1) == 'f')
                        {//finished early -- maybe move finished code here?
                            continue;

                        }

                        //if the body of the reply is numeric, delay the arrival / departure by that length of time
                        if(body.isNumeric() == true)
                        {

                            if(currentSSA.Arrival_SMS_Status__c == 'Sent - No Reply Yet')
                            {
                                Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                ssa.Id = sms.Safe_Space_Assessment__c;
                                ssa.Arrival_Delay_In_Minutes__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Arrival_Delay_In_Minutes__c + Integer.valueOf(body);
                                ssa.Arrival_SMS_Status__c = 'Sent - Delayed Arrival';
                                ssAssessmentsToUpdate.put(ssa.id, ssa);

                                continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                            }


                            if(currentSSA.Departure_SMS_Status__c == 'Sent - No Reply Yet'
                               || currentSSA.Departure_SMS_Status__c == 'Sent - Delayed Departure'
                               || currentSSA.Departure_SMS_Status__c == 'Buddy Check-In Request Sent')
                            {
                                Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                ssa.Id = sms.Safe_Space_Assessment__c;
                                ssa.Departure_Delay_In_Minutes__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Departure_Delay_In_Minutes__c + Integer.valueOf(body);
                                ssa.Departure_SMS_Status__c = 'Sent - Delayed Departure';
                                ssAssessmentsToUpdate.put(ssa.id, ssa);

                                continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                            }

                            // The Worker is responding to something, but it was not the linked SSA.
                            // See if we can work out what by using the backup records
                            if(currentSSA.Worker__c != null && backupSsaSmsByWorkedId.containsKey(currentSSA.Worker__c))
                            {
                                SMS__c backupSsaSMS = backupSsaSmsByWorkedId.get(currentSSA.Worker__c);
                                Safe_Space_Assessment__c backupSSA = backupSsaSMS.Safe_Space_Assessment__r;

                                if(backupSSA.Arrival_SMS_Status__c == 'Sent - No Reply Yet')
                                {
                                    // SMS is linked incorrectly. Relink to backup SSA.
                                    sms.Clicksend_Original_Message_Id__c = backupSsaSMS.Clicksend_Original_Message_Id__c;
                                    sms.In_Reply_To__c = backupSsaSMS.Id;
                                    sms.Safe_Space_Assessment__c = backupSSA.Id;
                                    smsToUpdate.put(sms.Id, sms);

                                    // Do the original action as if the backup SSA was the one linked.
                                    Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                    ssa.Id = sms.Safe_Space_Assessment__c;
                                    ssa.Arrival_Delay_In_Minutes__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Arrival_Delay_In_Minutes__c + Integer.valueOf(body);
                                    ssa.Arrival_SMS_Status__c = 'Sent - Delayed Arrival';
                                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                                    continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                                }


                                if(backupSSA.Departure_SMS_Status__c == 'Sent - No Reply Yet'
                                        || backupSSA.Departure_SMS_Status__c == 'Sent - Delayed Departure'
                                        || backupSSA.Departure_SMS_Status__c == 'Buddy Check-In Request Sent')
                                {
                                    // SMS is linked incorrectly. Relink to backup SSA.
                                    sms.Clicksend_Original_Message_Id__c = backupSsaSMS.Clicksend_Original_Message_Id__c;
                                    sms.In_Reply_To__c = backupSsaSMS.Id;
                                    sms.Safe_Space_Assessment__c = backupSSA.Id;
                                    smsToUpdate.put(sms.Id, sms);

                                    // Do the original action as if the backup SSA was the one linked.
                                    Safe_Space_Assessment__c ssa = new Safe_Space_Assessment__c();
                                    ssa.Id = sms.Safe_Space_Assessment__c;
                                    ssa.Departure_Delay_In_Minutes__c = ssAssessments.get(sms.Safe_Space_Assessment__c).Departure_Delay_In_Minutes__c + Integer.valueOf(body);
                                    ssa.Departure_SMS_Status__c = 'Sent - Delayed Departure';
                                    ssAssessmentsToUpdate.put(ssa.Id, ssa);

                                    continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                                }
                            }

                            continue; //break out of this sms loop so we don't reach the "didn't understand" reply at the bottom
                        }
                        
                        //if we got here, we didn't understand the message, so reply with a "sorry try again" message
                        SMS__c smsOut = new SMS__c();
                        smsOut.Mobile__c = sms.Mobile__c;
                        smsOut.User__c = sms.User__c;
                        smsOut.Safe_Space_Assessment__c = sms.Safe_Space_Assessment__c;
                        smsOut.Session__c = sms.Session__c;
                        smsOut.Case__c = sms.Case__c;
                        smsOut.Inbound__c = false;
                        smsOut.In_Reply_To__c = sms.Id;

                        //body of sms
                        smsOut.Body__c = Label.SMS_SafeSpace_Unknown_Reply;
                        
                        smsToInsert.add(smsOut);
                        
                    } 
                }
            }
        }
        
        
        if(ssAssessmentsToUpdate.values().size() > 0){update ssAssessmentsToUpdate.values();}
        if(smsToInsert.size() > 0){insert smsToInsert;}
        if(smsToUpdate.size() > 0)
        {
            List<SMS__c> smsToUpdateList = smsToUpdate.values();
            sfSmsTriggerHandler.setInReplyTos(smsToUpdateList);
            update smsToUpdateList;
        }
    }

//---------------------------------------------------------------
//--RELINK SMSs--------------------------------------------------
//---------------------------------------------------------------
    public static SMS__c relinkSMS(Map<Id, SMS__c> smsToUpdate, SMS__c sms, SMS__c backupSsaSMS, Id backupSSAId)
    {
        SMS__c outputSms = new SMS__c(Id=sms.Id);
        if(backupSsaSMS.Clicksend_Message_Id__c != null)
        {
            outputSms.Clicksend_Original_Message_Id__c = backupSsaSMS.Clicksend_Message_Id__c;
        }
        outputSms.In_Reply_To__c = backupSsaSMS.Id;
        outputSms.Safe_Space_Assessment__c = backupSSAId;
        smsToUpdate.put(sms.Id, outputSms);

        return outputSms;
    }


//---------------------------------------------------------------
//--SCHEDULED APEX JOBS------------------------------------------
//---------------------------------------------------------------
    //easy way of setting up scheduled jobs for the "sentinal"
    public static void scheduleJobs()
    {
        scheduleJobs(1);
    }
    
    public static void scheduleJobs(Integer minuteInterval)
    {
        //kill any existing jobs first
        killJobs(); 
        
        String baseJobName = 'sfSafeSpace XX:';
        if (Test.isRunningTest()){baseJobName = 'TEST - '+baseJobName;}
        
        for (Integer mins = 0; mins < 60; mins += minuteInterval)
        {
            System.schedule(baseJobName + String.valueOf(mins).leftPad(2, '0'), String.join(new List<String>
            {
                    '0',// Seconds
                    String.valueOf(mins),// Minutes
                    '*',// Hours
                    '*',// Day_of_month
                    '*',// Month
                    '?'// Day_of_week
                    // Optional_year
            }, ' '), new sfSafeSpace());
        }
    }
    
    public static void killJobs()
    {
        Map<Id, CronJobDetail> cronJobDetails = new Map<Id, CronJobDetail>([select Id from CronJobDetail where Name like 'sfSafeSpace XX%']);

        for(CronTrigger ct : [select Id  from CronTrigger where CronJobDetailId = :cronJobDetails.keySet()])
        {
            System.abortJob(ct.Id);
        }
    }

//---------------------------------------------------------------
//--SEND ERROR MESSAGE-------------------------------------------
//---------------------------------------------------------------
    public static void sendErrorMessage(String errors)
    {
		// send email
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        
        List<String> to = new List<String>();
        to.add('socialfutures.support@trausteknik.com');
        email.setToAddresses(to);
	
        email.setSubject('Safe Space SMS Error');
        email.setPlainTextBody(errors);

        if(!test.isRunningTest())
        {
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
        }
    }
}
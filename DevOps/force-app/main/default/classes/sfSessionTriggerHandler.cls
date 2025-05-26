public class sfSessionTriggerHandler extends TriggerHandler
{
    private static Map<Id, Session__c> oldMap { get { return (Map<Id, Session__c>) Trigger.oldMap;} }
    private static Map<Id, Session__c> newMap { get { return (Map<Id, Session__c>) Trigger.newMap;} }
    private static List<Session__c> oldList { get { return (List<Session__c>) Trigger.old;} }
    private static List<Session__c> newList { get { return (List<Session__c>) Trigger.new;} }

    public static Id recordTypeIdCaseRelated = Schema.SObjectType.Session__c.getRecordTypeInfosByDeveloperName().get('Case_Related').getRecordTypeId();
    public static Id recordTypeIdProgramRelated = Schema.SObjectType.Session__c.getRecordTypeInfosByDeveloperName().get('Program_Related').getRecordTypeId();
    public static Id recordTypeIdSafeSpaceV1 = Schema.SObjectType.Session__c.getRecordTypeInfosByDeveloperName().get('Safe_Space_Visit').getRecordTypeId();
    public static Id recordTypeIdSafeSpaceV2 = Schema.SObjectType.Session__c.getRecordTypeInfosByDeveloperName().get('Safe_Space').getRecordTypeId();


    private static Dex_Settings__c DexSettings {get {if(DexSettings == null) {DexSettings = Dex_Settings__c.getInstance();} return DexSettings;} set;}
    private static List<Session_Participant__c> sessionParticipantsToInsert = new List<Session_Participant__c>();
    private static Map<Id, Case> caseMap = new Map<Id, Case>();
    private static Map<Id, Case> caseMapToUpdate = new Map<Id, Case>();
    private static Map<Id, Case_Note__c> caseNotesToUpdate = new Map<Id, Case_Note__c>();

    private static list<Event> eventsToInsert = new list<Event>();

    // list of session ids that have changed date/time/duration to update linked event
    private static set<Id> sessionIdsChanged = new set<Id>();

    public override void beforeInsert()
    {
        Set<Id> caseIds = new Set<Id>();
        for(Session__c s : newList)
        {
            if (s.Case__c != null)
            {
                caseIds.add(s.Case__c);
            }
        }
        
        caseMap = getCaseMap(caseIds);
        
        for(Session__c s : newList)
        {
            s = setFields(s);
            s = checkRequiredDexFields(s);
            if (s.RecordTypeId == recordTypeIdCaseRelated) { s = checkReportingPeriod(s); }
            
        }
    }
    
    public override void afterInsert()
    {
        
        List<Id> caseIDs = New List<Id>();
        for(Session__c session : newList)
        {
            //if our session has a case, add that case
            if(session.case__c != null){caseIDs.add(session.case__c);}
        }
        
        //Need to get additional info from the Program associated to the case assigned to the session.
        Map<Id,Case> caseMap = new Map<Id,Case>
        (
            [SELECT Id,Initial_Collection_Period__c,Contact.Current_or_Former_ADF_Member__c,Program__r.AIHW_Reporter__c,Status,
                (SELECT Collection_Period_Month_Start_Date__c, Ongoing_Support_Period_Ind__c FROM Collection_Periods1__r)
            FROM Case 
            WHERE Id = :caseIDs ]
        );

        List<Collection_Period__c> cpsToInsert = new List<Collection_Period__c>();
        for(Session__c newSession : newList) 
        {
            if(newSession.case__c != null && newSession.RecordTypeId != recordTypeIdSafeSpaceV1 && newSession.RecordTypeId != recordTypeIdSafeSpaceV2)
            {
                collectionPeriodCreation(newSession, caseMap.get(newSession.case__c), cpsToInsert);
            }
        }

        if(cpsToInsert.size() > 0){insert cpsToInsert;}

        upsertSessionEvents(newMap);
    }
    
    public override void beforeUpdate()
    {
        Set<Id> caseIds = new Set<Id>();
        for(Session__c s : newList)
        {
            if (s.Case__c != null)
            {
                caseIds.add(s.Case__c);
            }
        }
        
        caseMap = getCaseMap(caseIds);
        
        for(Session__c s : newList)
        {
            s = setFields(s);
            s = checkRequiredDexFields(s);
            if (s.RecordTypeId == recordTypeIdCaseRelated && !system.isBatch() && !system.isQueueable()) 
            { 
                s = checkReportingPeriod(s); 
            }
        }
    }

    public override void afterUpdate()
    {
        //if the sessions' case has changed for whatever reason, move the case notes as well
        moveCaseNotes(newMap, oldMap);

        for (Session__c s : newList)
        {

        }

        upsertSessionEvents(newMap);
        updateRelatedSafeSpaceAssessments(newList, oldMap);
    }

    public override void afterDelete()
    {
        for(Session__c s : oldList)
        {

        }

        deleteSessionEvents(oldMap);
    }


//---------------------------------------------------------------
//--SET FIELDS---------------------------------------------------
//---------------------------------------------------------------
    public static Session__c setFields(Session__c s)
    {
        //set the program from the case if one has not already been set
        if(s.Program__c == null && s.Case_Program_Id__c != null){s.Program__c = s.Case_Program_Id__c ;}
    
        //set the program type to be that of the program
        //this is so that the related list can be filtered correctly
        s.Program_Type__c = s.Program_Program_Type__c;
        
        //set the sharing criteria
        s.Sharing_Criteria__c = s.Program_Name__c;
    
        //set the finish date/time based on the start time + duration
        if(s.Start_Date_Time__c != null && s.Duration_Hours__c != null && s.Duration_Minutes__c != null)
        {
            s.Finish_Date_Time__c = s.Start_Date_Time__c;
            s.Finish_Date_Time__c = s.Finish_Date_Time__c.addHours(Integer.valueOf(s.Duration_Hours__c));
            s.Finish_Date_Time__c = s.Finish_Date_Time__c.addMinutes(Integer.valueOf(s.Duration_Minutes__c));
            //added time adjusted for timezone for declined emails, defaulted to Sydney Time (can be adjusted to use Timezone)
            s.Start_Time_as_Timezone__c = sfHelpers.timeFromDateTimeInSpecifiedTimezone('Australia/Sydney', s.Start_Date_Time__c);
        }
        
        //make sure all the SHS provided and refered services were also identified:
        s.Housing_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Housing_Services_Needs_Identified__c, s.Housing_Services_Provided__c);
        s.Housing_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Housing_Services_Needs_Identified__c, s.Housing_Services_Referral_Arranged__c);
        s.Specialised_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Specialised_Services_Needs_Identified__c, s.Specialised_Services_Provided__c);
        s.Specialised_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Specialised_Services_Needs_Identified__c, s.Specialised_Services_Referral_Arranged__c);
        s.Family_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Family_Services_Needs_Identified__c, s.Family_Services_Provided__c);
        s.Family_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.Family_Services_Needs_Identified__c, s.Family_Services_Referral_Arranged__c);
        s.General_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.General_Services_Needs_Identified__c, s.General_Services_Provided__c);
        s.General_Services_Needs_Identified__c = sfCollectionPeriodTriggerHandler.mergeMultiSelect(s.General_Services_Needs_Identified__c, s.General_Services_Referral_Arranged__c);
    
        //CIMS unique Check
        s.CIMS_Unique_Check__c = null;
        if(s.CIMS_Cluster_Id__c != null && s.CIMS_Note_Id__c != null){s.CIMS_Unique_Check__c = s.CIMS_Cluster_Id__c + '_' + s.CIMS_Note_Id__c;}   
    
        //ensure the ownerId is set
        if(s.OwnerId == null){s.OwnerId = s.Case_Owner_Id__c;}
        if(s.OwnerId == null){s.OwnerId = UserInfo.getUserId();}

        return s;
    }

//---------------------------------------------------------------
//--SESSION EVENTS------------------------------------------------
//---------------------------------------------------------------
    public static void upsertSessionEvents(Map<Id, Session__c> sessions)
    {
        if(sessions == null || sessions.size() == 0){return;}

        Map<Id, Event> eventsToUpsert = new Map<Id, Event>();//?indexed by Session Id NOT Event ID

        //find any existing events for the sessions
        Map<Id, Event> existingEvents = new Map<Id, Event>(); //?indexed by Session Id NOT Event ID
        for(Event x : [SELECT Id, WhoId, WhatId, recordTypeId, 
                          Subject, StartDateTime, EndDateTime, OwnerId 
                       FROM Event 
                       WHERE WhatId IN :sessions.keySet()])
        {
            existingEvents.put(x.WhatId, x);
        }

        //loop through the sessions and upsert events as needed
        for(Session__c x : sessions.values())
        {
            //if we don't have all the data we need, this skip to the next session
            if(x.Start_Date_Time__c == null || x.Finish_Date_Time__c == null){continue;}

            //prepare an event record for this session
            //later, we'll check for an existing event and update it if it exists and does not match
            Event e = new Event();
            e.WhatId = x.Id; //the event trigger handler will set all the other stuff, like Program, Case, etc.
            e.recordTypeId = sfEventTriggerHandler.recordTypeIdEventWithNotificationReminders;
            e.Subject = x.Name;
            e.StartDateTime = x.Start_Date_Time__c;
            e.EndDateTime = x.Finish_Date_Time__c;
            e.OwnerId = x.OwnerId;
            if(e.OwnerId == null || String.valueOf(e.OwnerId).startsWith('005') == false){e.OwnerId = UserInfo.getUserId();}

            //if the case contact is a session participant, set the whoId to the contact
            if(x.Case_Contact_is_Session_Participant__c == true){e.WhoId = x.Case_Contact_Id__c;}
            
            //TODO 2024-12-11 HP: location from the Session

            //if there is an existing event, see if it needs to be updated
            if(existingEvents.containsKey(x.Id))
            {
                //set the id of the existing event, as later if this is blank we'll assume it needs to be created
                e.Id = existingEvents.get(x.Id).Id;

                //check if any of the relevant fields have changed
                Boolean needsToBeUpdated = false;
                if(e.WhoId != existingEvents.get(x.Id).WhoId){needsToBeUpdated = true;}
                if(e.Subject != existingEvents.get(x.Id).Subject){needsToBeUpdated = true;}
                if(e.StartDateTime != existingEvents.get(x.Id).StartDateTime){needsToBeUpdated = true;}
                if(e.EndDateTime != existingEvents.get(x.Id).EndDateTime){needsToBeUpdated = true;}
                if(e.recordTypeId != existingEvents.get(x.Id).recordTypeId){needsToBeUpdated = true;}
                if(e.ownerId != existingEvents.get(x.Id).ownerId){needsToBeUpdated = true;}

                //if this session was just cancelled, but was done by a different user than the Owner, then we need to send the cancellation SMS
                if(x.Status__c == 'Cancelled' 
                && oldMap != null && (oldMap.get(x.Id).Status__c == 'Scheduled' || oldMap.get(x.Id).Status__c == 'Confirmed')
                && x.OwnerId != Userinfo.getUserId())
                {
                    //send the cancellation SMS
                    e.Cancellation_Send_Status__c = 'Send Now';
                    needsToBeUpdated = true;
                }

                //if any of the fields have changed, add the event to the map to be updated - indexed by the SESSION ID
                if(needsToBeUpdated == true){eventsToUpsert.put(x.Id, e);}
            }

            //if there is no ID set on the event by this stage, it means we need to create it
            if(e.Id == null)
            {
                //add this to the list of events to be inserted - indexed by the SESSION ID
                eventsToUpsert.put(x.Id, e);
            }
        }

        //upsert the events if we have any
        if(eventsToUpsert != null && eventsToUpsert.size() > 0){upsert eventsToUpsert.values();}
    }

    public static void deleteSessionEvents(Map<Id, Session__c> sessions)
    {
        //delete all events related to the now-deleted sessions
        List<Event> events = [SELECT Id FROM Event WHERE WhatId IN :sessions.keySet()];

        if(events.size() > 0){delete events;}
    }

//---------------------------------------------------------------
//--SAFE SPACE ASSESSMENTS---------------------------------------
//---------------------------------------------------------------

    // TT-43514: Update Safe space assessments when the start time changes.
    public static void updateRelatedSafeSpaceAssessments(List<Session__c> sessionList, Map<Id, Session__c> oldSessionMap)
    {
        if(sessionList == null || oldSessionMap == null){ return; }

        Set<Id> targetSessionIds = new Set<Id>();
        for(Session__c s : sessionList)
        {
            // Find sessions where the time has changed.
            if(oldSessionMap.containsKey(s.Id) && oldSessionMap.get(s.Id).Start_Date_Time_Plus_Delay__c != s.Start_Date_Time_Plus_Delay__c) { targetSessionIds.add(s.Id); }
            if(oldSessionMap.containsKey(s.Id) && oldSessionMap.get(s.Id).Duration_In_Hours__c != s.Duration_In_Hours__c) { targetSessionIds.add(s.Id); }
        }

        if(targetSessionIds.size() > 0)
        {
            // Find Safe Space Assessments affected by the found sessions.
            Map<Id, Safe_Space_Assessment__c> ssaList = new Map<Id, Safe_Space_Assessment__c>([SELECT Id FROM Safe_Space_Assessment__c WHERE Session__c IN :targetSessionIds]);

            // Update the SMS times for those Assessments.
            sfSafeSpaceAssessmentTriggerHandler.setLatestDepartureDateTimes(ssaList.keySet());
        }
    }

//---------------------------------------------------------------
//--COLLECTION PERIOD CREATION-----------------------------------
//---------------------------------------------------------------
    @testVisible
    private static void collectionPeriodCreation(Session__c newSession, Case currentCase, List<Collection_Period__c> cpsToInsert)
    {
        //Something was causing testing to fail as it was creating sessions without dates, dates are required on user input so unlikely to break anything here.
        if(newSession.Session_Date__c != NULL)
        {
            //Only 1 Collection Period can exist for a calendar month, so checking all collection periods for this case to see if one already exists based on its start date being the first of the month.
            Set<Date> startDates = new Set<Date>();
            Collection_Period__c mostRecentCollectionPeriod;
            for(Collection_Period__c dateStart : currentCase.Collection_Periods1__r)
            {
                startDates.add(dateStart.Collection_Period_Month_Start_Date__c);

                // Take note of the most recent collection period for the case.
                if(mostRecentCollectionPeriod == null || mostRecentCollectionPeriod.Collection_Period_Month_Start_Date__c < dateStart.Collection_Period_Month_Start_Date__c)
                {
                    mostRecentCollectionPeriod = dateStart;
                }
            }

            //Collection Period starts on the first of the month the session was recorded in.
            Date collectionPeriodStartDate = newSession.Session_Date__c.toStartOfMonth();

            // Not having an initial collection period means the case is newly created.
            Boolean noInitialCollectionPeriod = currentCase.Initial_Collection_Period__c == null;

            // Check if the collection period last month had "Receiving Ongoing Support?" field is set to "Yes, ongoing support".
            Boolean lastMonthOngoingSupport = mostRecentCollectionPeriod != null
                    && mostRecentCollectionPeriod.Ongoing_Support_Period_Ind__c == '1'
                    && mostRecentCollectionPeriod.Collection_Period_Month_Start_Date__c == collectionPeriodStartDate.addMonths(-1);
    
            // Collection Period is only created when a new session is created and that sessions Program has AIHW set to TRUE.
            // Also, only create collection periods for non-closed cases with either no collection period or the
            //    last month's collection period indicating ongoing support.
            if(currentCase.Program__r.AIHW_Reporter__c == true && startDates.contains(collectionPeriodStartDate) != true && currentCase.Status != 'Closed' && (noInitialCollectionPeriod || lastMonthOngoingSupport))
            {
                //If this is the first collection period for this case, the record type is Initial, otherwise it is Ongoing.
                String recordType = 'Initial_Collection_Period';
                if(currentCase.Initial_Collection_Period__c != NULL)    {    recordType = 'Ongoing_Collection_Period'; }
                Id recordTypeId = Schema.SObjectType.Collection_Period__c.getRecordTypeInfosByDeveloperName().get(recordType).getRecordTypeId();
                
                //Create the new Collection Period based on the Session and Case information.
                Collection_Period__c newCollectionPeriod = new Collection_Period__c();
                newCollectionPeriod.RecordTypeId = recordTypeId;
                newCollectionPeriod.Collection_Period_Month_Start_Date__c = collectionPeriodStartDate;
                newCollectionPeriod.Case__c = currentCase.Id;
                //insert newCollectionPeriod;
                cpsToInsert.add(newCollectionPeriod);
                
                //20201231 HP: commented out to move to collection period trigger handler later
                //If this is the first Collection Period record for this case, update the case to specify this record is the intitial Collection Period.
                //if(currentCase.Initial_Collection_Period__c == NULL)
                //{ 
                //    currentCase.Initial_Collection_Period__c = newCollectionPeriod.Id;
                //    update currentCase;
                //}
            }
        }
        
        //no need to return cpsToInsert as it is passed by reference
    }

//---------------------------------------------------------------
//--CHECK REQUIRED DEX FIELDS------------------------------------
//---------------------------------------------------------------
    @testVisible
    public static Session__c checkRequiredDexFields(Session__c s)
    {
        List<String> fieldList = new List<String>();
        String missingFields = '';

        
        if (s.Start_Date_Time__c == null) { fieldList.add('Start Date / Time'); }
        if (s.Service_Setting__c == null) { fieldList.add('Service Setting'); }
        if (s.Program_Type__c == null) { fieldList.add('Program Type'); }

        if (fieldList.size() > 0)
        {
            missingFields += 'Missing Fields: ';
            missingFields += String.join(fieldList, ', ');
        }
        s.Dex_Data_Completeness__c = missingFields;

        return s;
    }

//---------------------------------------------------------------
//--CASE MAP-----------------------------------------------------
//---------------------------------------------------------------
    @testVisible
    public static Map<Id, Case> getCaseMap(Set<Id> caseIDs)
    {
        Map<Id, Case> caseMap = new Map<Id, Case>([SELECT Id, Status, Date_of_Enquiry_or_Referral__c, Date_of_First_Session__c, Date_of_Last_Session__c FROM Case WHERE Id in :caseIds]);
        return caseMap;
    }

//---------------------------------------------------------------
//--CHECK REPORTING PERIOD---------------------------------------
//---------------------------------------------------------------
    @testVisible
    public static Session__c checkReportingPeriod(Session__c s)
    {
        if (dexSettings.Prevent_Case_Changes_After_Cutoff__c == true && caseMap.containsKey(s.Case__c) && s.Start_Date_Time__c != null && s.Program_is_Dex_Reporter__c == true)
        {
            date sessionDate = date.newInstance(s.Start_Date_Time__c.Year(), s.Start_Date_Time__c.Month(), s.Start_Date_Time__c.Day());
            date cutoffDate = dexApi.getCutoffDate(sessionDate);
            Case c = caseMap.get(s.Case__c);
            
            String startReportingPeriod = DexApi.getReportingPeriod(sessionDate);

            if (s.Finish_Date_Time__c != null)
            {// check that session doesn't span multiple reporting periods
                date sessionEndDate = date.newInstance(s.Finish_Date_Time__c.Year(), s.Finish_Date_Time__c.Month(), s.Finish_Date_Time__c.Day());
               
                String endReportingPeriod = DexApi.getReportingPeriod(sessionEndDate);
                system.debug('startReportingPeriod: ' + startReportingPeriod);
                system.debug('endReportingPeriod: ' + endReportingPeriod);
                system.debug('sessionDate: ' + sessionDate);
                system.debug('sessionEndDate: ' + sessionEndDate);
                if (startReportingPeriod != endReportingPeriod)
                {
                    s.addError(
                        'Cannot create/update a session to span multiple reporting periods, session start is in reporting ' + startReportingPeriod + ' and session end is in reporting ' + endReportingPeriod
                    );
                    return s;
                }
            }
            
            // get case if already added to update map
            if (caseMapToUpdate.containsKey(c.Id)) { c = caseMapToUpdate.get(c.Id); }

            if (date.today() > cutoffDate && userinfo.getUserId() != id.valueOf('0052x000000FIo2AAG')) //TT user
            {// No Sessions can be created/updated after the cutoff date
                s.addError(
                    'Cannot create/update a session after the cutoff date.  Cutoff date for reporting ' 
                    + startReportingPeriod + ' is: ' + string.ValueOf(cutoffDate)
                );
            }
            else if (s.Status__c == 'Cancelled' || s.Status__c == 'No-Show' || s.Status__c == 'Declined')
            {// if case is not to be synced, set session to not be synced
                s.Dex_Sync_Status__c = 'Sync Not Required';
                s.Dex_Session_Assessments_Sync_Status__c = 'Sync Not Required';
            }
            else 
            {// allow session to be created, update case first/last session dates if required, set dex case child status to sync required
                c.Dex_Child_Sync_Status__c = 'Sync Required';

                if (c.Date_of_First_Session__c == null || sessionDate < c.Date_of_First_Session__c)
                {// update date_of_First_Session__c on case
                    c.Date_of_First_Session__c = sessionDate;
                }
                else if (c.Date_Of_Last_Session__c == null || sessionDate > c.Date_Of_Last_Session__c)
                {// update date_of_Last_Session__c on case
                    c.Date_Of_Last_Session__c = sessionDate;
                    
                }
                caseMapToUpdate.put(c.Id, c);
                s.Dex_Sync_Status__c = 'Sync Required';
            }   
        }
        
        return s;
    }

//---------------------------------------------------------------
//--MOVE CASE NOTES----------------------------------------------
//---------------------------------------------------------------
    public static void moveCaseNotes(Map<Id, Session__c> newValuesMap, Map<Id, Session__c> oldValuesMap)
    {
        Set<Id> changedSessionIds = new Set<Id>();
        
        for(Session__c s : newValuesMap.values())
        {
            if(s.Case__c != oldValuesMap.get(s.id).Case__c){changedSessionIds.add(s.Id);}
        }
        
        //if some sessions have had their case changed, find all the case ntoes related to these sessions so we can update them
        if(changedSessionIds.size() > 0)
        {
            List<Case_Note__c> caseNotes = [select Id, Case__c, Session__c from Case_Note__c where Session__c = :changedSessionIds];
            for(Case_Note__c cn1 : caseNotes)
            {
                Case_Note__c cn2 = new Case_Note__c();
                cn2.Id = cn1.Id;
                if(caseNotesToUpdate.get(cn2.Id) != null){cn2 = caseNotesToUpdate.get(cn2.Id);}
                cn2.Case__c = newValuesMap.get(cn1.Session__c).Case__c;
                caseNotesToUpdate.put(cn2.Id, cn2);
            }
        }
    }

//---------------------------------------------------------------
//--AND FINALLY--------------------------------------------------
//---------------------------------------------------------------
    public override void andFinally()
    {//do stuff after everything else..
        if ( sessionParticipantsToInsert.size() > 0 ){ upsert sessionParticipantsToInsert; sessionParticipantsToInsert.clear(); }
        if ( caseMapToUpdate.values().size() > 0) { update caseMapToUpdate.values(); caseMapToUpdate.clear(); }
        if ( caseNotesToUpdate.values().size() > 0) { update caseNotesToUpdate.values(); caseNotesToUpdate = new Map<Id, Case_Note__c>(); }
        if ( eventsToInsert.size() > 0 ){ insert eventsToInsert; eventsToInsert.clear(); }
    }
}
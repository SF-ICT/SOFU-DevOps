public class ClickSendInboundSMSController 
{
    public void onLoad()
    {        
        Map<String, String> params = System.currentPagereference().getParameters();        
        system.debug(params);
        
        processParams(params);
    }
    
    public static void processParams(Map<String, String> params)
    {
    

        SMS_Inbound_Log__c smsLog = new SMS_Inbound_Log__c();

        try
        {
            ClickSendModel.SMSData smsData = new ClickSendModel.SMSData();

            String paramsString = JSON.serialize(params);
            smsLog.Params_Short__c = paramsString.abbreviate(254);
            smsLog.Params__c = paramsString;
            Database.insert(smsLog, false);


            smsData.timestamp = params.get('timestamp');
            smsData.from_var = params.get('from');
            smsData.original_message_id = params.get('original_message_id');
            smsData.custom_string = params.get('custom_string');
            smsData.message_id = params.get('message_id');
            
            if(params.get('message') != null){smsData.body = params.get('message');}
            if(smsData.body == null){smsData.body = params.get('body');}
            
            SMS__c sms = smsData.toSfdcRecord();
            
            //check we haven't already seen this message by the id (clicksend has a habbit of sending the same reply multiple times...)
            if(sms.ClickSend_Message_Id__c == null || (sms.ClickSend_Message_Id__c != null && [SELECT id FROM SMS__c WHERE ClickSend_Message_Id__c = :sms.ClickSend_Message_Id__c].size() == 0))
            {
                insert sms;
            }
        }
        catch(Exception e)
        {
            System.debug(e);

            // Try to log errors without causing more problems.
            try { try { sendErrorEmail(e); logError(smsLog, e, null); } catch (Exception sendError) { logError(smsLog, e, sendError); } } catch (Exception e2) { }
        }
        
        
    }

//------------------------------------------------------
//--SEND ERROR EMAIL------------------------------------
//------------------------------------------------------
    public static void sendErrorEmail(Exception e)
    {
        // Get an org-wide address.
        List<OrgWideEmailAddress> owaList = [SELECT Id, Address FROM OrgWideEmailAddress WHERE Address = 'do-not-reply@socialfutures.org.au' LIMIT 1];
        if(owaList.size() == 0){ owaList = [SELECT Id, Address FROM OrgWideEmailAddress LIMIT 1]; }

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject('ClickSendInboundSMSController Error');
        if(owaList.size() > 0)
        {
            email.setOrgWideEmailAddressId(owaList.get(0).Id);
        }
        if(sfHelpers.orgDetails.IsSandbox){email.setSubject('(Sandbox) ClickSendInboundSMSController Error');}
        email.setPlainTextBody('updated message: ' + e.getMessage() + e.getStackTraceString());
        email.setToAddresses(new List<String>{'infosystems@socialfutures.org.au'});
        Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{email});
    }

    public static void logError(SMS_Inbound_Log__c smsLog, Exception originalException, Exception emailError)
    {
        smsLog.Has_Error__c = true;
        smsLog.Error_Message__c = originalException.getMessage() + ' ' + originalException.getStackTraceString();
        if(emailError != null)
        {
            smsLog.Error_Message__c = 'Original Exception: ' + originalException.getMessage() + ' ' + originalException.getStackTraceString() + '| Email exception: ' + emailError.getMessage() + ' ' + emailError.getStackTraceString();
        }
        Database.upsert(smsLog, false);
    }
}
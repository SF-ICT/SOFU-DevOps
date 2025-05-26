public class ClickSendHelper 
{
    //get custom settings
    private static Clicksend_Settings__c css = Clicksend_Settings__c.getOrgDefaults();
    private static String auth = 'Basic ' + EncodingUtil.base64Encode(Blob.valueof(css.Username__c + ':' + css.Key__c));
    private static String baseUrl = css.API_Endpoint__c;
    private static String optOutId = css.optout_list_id__c;
    private static String dedicatedNumber = css.Dedicated_Number__c;
    private static String notifyEmail = css.Notify_Email__c;
    public static Boolean testAllowsHttp = false;

//----------------------------------------------------------------
//--SEND SMS FUTURE-----------------------------------------------
//----------------------------------------------------------------
    @future(callout=true)
    public static void sendSmsFuture(Set<Id> smsIds)
    {
        List<ClickSendModel.SMSMessage> messageList = new List<ClickSendModel.SMSMessage>();                                               
        for(SMS__c sms : [select Id, Mobile__c, Body__c, Other_Record_Id__c, Survey__c from SMS__c where id = :smsIds and Inbound__c = false and ClickSend_Message_Id__c = null])
        {
            messageList.add(new ClickSendModel.SMSMessage(sms));
        }
        
        sendSmsGetResponse(messageList);
    }

//----------------------------------------------------------------
//--SEND SMS GET RESPONSE-----------------------------------------
//----------------------------------------------------------------
    public static ClickSendModel.SMSResponse sendSmsGetResponse(List<ClickSendModel.SMSMessage> messageList)
    {
        if(messageList == null || messageList.size() == 0){return null;}
    
        httpResponse res = sendsms(messageList);
        
        String responseBody = res.getBody();
        responseBody = replaceReservedWordsIncoming(responseBody);

        responseBody = responseBody.replace('"schedule":"",', '"schedule":null,');
        
        //if(Test.isRunningTest() == true){responseBody = '{}';}
        
        System.debug(responseBody);
        for (Integer i = 0; i < responseBody.length(); i += 200)
        {
            Integer lastIndex = i + 200;
            if(lastIndex <= responseBody.length()) { System.debug(responseBody.substring(i, lastIndex)); }
            else { System.debug(responseBody.substring(i)); }

        }

        ClickSendModel.SMSResponse smsResponses = null;
        SMS_Inbound_Log__c logEntry = null;
        try
        {
            smsResponses = (ClickSendModel.SMSResponse)JSON.deserialize(responseBody, ClickSendModel.SMSResponse.class);
            logEntry = new SMS_Inbound_Log__c(Outbound__c=true, Params_Short__c=responseBody.abbreviate(254), Params__c=responseBody.abbreviate(32000));
        }
        catch(Exception e)
        {
            if(Test.isRunningTest() == false){ Messaging.sendEmail(sendErrorEmailForBody(e, 'ClickSendHelper JSON Parsing Response Error', 'responseBody', responseBody)); }
            logEntry = new SMS_Inbound_Log__c(Outbound__c=true, Params_Short__c=responseBody.abbreviate(254), Params__c=responseBody.abbreviate(32000), Has_Error__c=true, Error_Message__c=e.getMessage() + ' ' + e.getStackTraceString());
        }

        //go through the responses and see if we can update any SMS__c records with their message id
        if(smsResponses != null && smsResponses.data != null && smsResponses.data.messages != null && smsResponses.data.messages.size() > 0)
        {
            List<SMS__c> smsToUpdate = new List<SMS__c>();
            List<Messaging.SingleEmailMessage> errorEmails = new List<Messaging.SingleEmailMessage>();
            
            for(ClickSendModel.MessageClass m : smsResponses.data.messages)
            {
                if(m.custom_string != null)
                {
                    ClickSendModel.customStringAttributes a = null;
                    try
                    {
                        a = (ClickSendModel.customStringAttributes)JSON.deserialize(m.custom_string, ClickSendModel.customStringAttributes.class);

                        SMS__c sms = new SMS__c();
                        sms.Id = a.Id;
                        sms.Clicksend_Message_Id__c = m.message_id;
                        smsToUpdate.add(sms);
                    }
                    catch(Exception e)
                    {
                        errorEmails.addAll(sendErrorEmailForBody(e, 'ClickSendHelper JSON Parsing Attributes Error', 'custom_string', m.custom_string));
                    }
                }

                if(errorEmails.size() > 0) Messaging.sendEmail(errorEmails);
            }
            
            if(smsToUpdate.size() > 0)
            {
                update smsToUpdate;
            }
        }

        if(logEntry != null)
        {
            // Insert the log entry, but don't error if unable.
            Database.insert(logEntry, false);
        }

        return smsResponses ;
    }

//----------------------------------------------------------------
//--SEND SMS------------------------------------------------------
//----------------------------------------------------------------
    public static httpResponse sendsms(List<ClickSendModel.SMSMessage> messageList)
    {
        ClickSendModel.SendSMS SMSData = new ClickSendModel.SendSMS();
        SMSData.messages = new List<ClickSendModel.SMSMessage>();
        SMSData.messages.addAll(messageList);

        // parse messageList into json
        String jsonString = JSON.serialize(SMSData, true);
        
        // find replace 'fromString' with 'from'
        jsonString = replaceReservedWordsOutgoing(jsonString);
        system.debug('jsonString: ' + jsonString);
        // CALLOUT json of messageList
        String method = 'POST';
        String uri = baseUrl + '/sms/send';
        Map<String, String> headers = new Map<String, String>();

        headers.put('Content-Type', 'application/json');
        headers.put('Authorization', auth);

        httpResponse res = send(method, uri, headers, jsonString);
        
        // RETURN httpResponse
        return res;
    }

//----------------------------------------------------------------
//--HELPER FUNCTIONS----------------------------------------------
//----------------------------------------------------------------
    public static String replaceReservedWordsOutgoing(String json)
    {
        json = json.replace('"fromString"', '"from"');

        return json;
    }

    public static String replaceReservedWordsIncoming(String json)
    {
        json = json.replace('"currency"','"currencyData"');
        json = json.replace('"date"', '"dateInt"');
        json = json.replace('"from"', '"fromString"');

        return json;
    }

//----------------------------------------------------------------
//--CREATE SMS MESSAGE--------------------------------------------
//----------------------------------------------------------------
    public static ClickSendModel.SMSMessage createSMSMessage(String toString, String fromString, String bodyString, String customString, String sourceString)
    {
        clickSendModel.SMSMessage smsMsg = new clickSendModel.SMSMessage();

        if(String.isEmpty(toString) || String.isEmpty(bodyString)){return null;}

        smsMsg.to = toString;
        smsMsg.body = bodyString;

        if(!String.isEmpty(fromString)){smsMsg.fromString = fromString;}
        if(!String.isEmpty(customString)){smsMsg.custom_string = customString;}
        if(!String.isEmpty(sourceString)){smsMsg.source = sourceString;}

        return smsMsg;
    }

//----------------------------------------------------------------
//--GET INBOUND MESSAGES------------------------------------------
//----------------------------------------------------------------
    public static List<ClickSendModel.SMSData> getInboundMessages()
    { // get replies to sms messages from click send, then parse result
        String uri = baseUrl + '/sms/inbound';
        List<ClickSendModel.SMSData> messageData = new List<ClickSendModel.SMSData>();
        
        while (uri != null)
        { // while there are pages to get, keep requesting
            HttpResponse response = new HttpResponse();
            ClickSendModel.InboundSMS json_object = new ClickSendModel.InboundSMS();
            
            response = getInboundResponse('GET', uri, null);

            if(response.getBody() != null && response.getBody().length() > 0) json_object =  (ClickSendModel.InboundSMS) System.JSON.deserialize(response.getBody(), ClickSendModel.InboundSMS.class);
            
            
            messageData.addAll(json_object.data.data);
            uri = json_object.data.next_page_url;
        }
        
        return messageData;
    }

//----------------------------------------------------------------
//--GET INBOUND RESPONSE------------------------------------------
//----------------------------------------------------------------
    public static HttpResponse getInboundResponse(String method, String uri, String body)
    {
        Map<String, String> headers = new Map<String, String>();
        headers.put('Authorization', auth);

        HttpResponse response = send(method, uri, headers, body);

        return response;
    }

//----------------------------------------------------------------
//--DELETE MESSAGES-----------------------------------------------
//----------------------------------------------------------------
    public static HttpResponse deleteMessages(List<ClickSendModel.SMSData> messages)
    {// if all goes well, delete processed messages from clicksend
        String uri = '';
        integer time_stamp = 0;
        HttpResponse response = new HttpResponse();

        for (ClickSendModel.SMSData d : messages)
        { // get latest timestamp
            system.debug('smsdata: ' + d);
            if (integer.valueOf(d.timestamp)>time_stamp)
            {
                time_stamp = integer.valueOf(d.timestamp);
            }
        }
        
        if (time_stamp != 0)
        {
            uri = baseUrl + '/sms/inbound-read';
            String body = null;
            if (time_stamp != 0)
            {
                JSONGenerator gen = JSON.createGenerator(true);
                gen.writeStartObject();
                gen.writeNumberField('date_before', time_stamp);
                gen.writeEndObject();
                body = gen.getAsString();              
            }
            system.debug('clearing messages older than: ' + time_stamp);
            response = getInboundResponse('PUT', uri, body);
        }

        return response;
    }

//----------------------------------------------------------------
//--CREATE TASK---------------------------------------------------
//----------------------------------------------------------------
    public static Task createTask(String subject, String description, String type, String status, Id whoId, Id whatId)
    {
        Task t = new Task();

        t.Subject = subject;
        t.Type = type;
        t.Status = status;
        t.ActivityDate = System.Today();
        t.WhoId = whoId;
        t.WhatId = whatId;
        t.Description = description;
        
        return t;
    }

//----------------------------------------------------------------
//--GET CURRENT OPT OUT LIST--------------------------------------
//----------------------------------------------------------------
    public static Map<String, String> getCurrentOptOutList()
    {
        // Read in all the numbers in the Opt Out List so we can get the Id of the matching phone number.
        String readMethod = 'GET'; 
        String uri = baseUrl + '/lists/' + optOutId + '/contacts';
        Map<String, String> readHeaders = new Map<String, String>();
        readHeaders.put('Authorization', auth);
        String readBody = null; // Nothing needs to be passed into the body to read out all the contacts in a list.
        
        Map<String, String> optOutList = new Map<String, String>();
        String ClickSendContactId = '';
        String phoneNumber = '';        

        HttpResponse readResponse = send(readMethod, uri, readHeaders, readBody);
        system.debug('get current optout list: ' + readResponse.getBody());
        // Populate the optOutList with the Id and number of the results in the readResponse.
        JSONParser parser = JSON.createParser(readResponse.getBody());
        
        while (parser.nextToken() != null)
        {
            if (parser.getCurrentName() == 'contact_id')
            {
                parser.nextToken();
                ClickSendContactId = parser.getText();
            }

            if (parser.getCurrentName() == 'phone_number')
            {
                parser.nextToken();
                phoneNumber = parser.getText();
                // The last 9 digits of the phone number will be used to match to get the Contact Id.
                optOutList.put(phoneNumber.right(9), ClickSendContactID);
                // After the optOutList value has been set skip the rest of the fields in the array.
                parser.skipChildren();
            }
        }
        return optOutList;
    }

//----------------------------------------------------------------
//--SEND VIA API--------------------------------------------------
//----------------------------------------------------------------
    public static HttpResponse send(String method, String uri, Map<String, String> headers, String body)
    {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(uri);

        for(String key : headers.keySet())
        {
            req.setHeader(key, headers.get(key));
        }

        req.setMethod(method);

        // Only add the body if it is not null or an empty string.
        if (!String.isEmpty(body))
        {
            req.setbody(body);
        }
        
        // Instantiate a new http object.
        Http h = new Http();
        HttpResponse res = new HttpResponse();

        // Send the request, and return a response.
        if(Test.isRunningTest() == false || testAllowsHttp){res = h.send(req);}
        
        return res;
    }

//----------------------------------------------------------------
//--SEND ERROR EMAIL----------------------------------------------
//----------------------------------------------------------------
    public static List<Messaging.SingleEmailMessage> sendErrorEmailForBody(Exception e, String errorName, String bodyName, String bodyText)
    {
        System.debug(e);

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject(errorName);
        if(sfHelpers.orgDetails.IsSandbox){email.setSubject('(Sandbox) ' + errorName);}
        email.setPlainTextBody('error message: ' + e.getMessage() + ' ' + e.getStackTraceString() + '\n ' + bodyName +': ' + bodyText);
        email.setToAddresses(new List<String>{'infosystems@socialfutures.org.au'});

        return new List<Messaging.SingleEmailMessage>{ email };
    }
}
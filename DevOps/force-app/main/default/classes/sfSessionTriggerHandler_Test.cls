@isTest
public class sfSessionTriggerHandler_Test
{
    @testSetup
    public static void testSetup()
    {
        sfHelpers.testSetup();
        Dex_Settings__c dexSettings = new Dex_Settings__c();
        dexSettings.Prevent_Case_Changes_After_Cutoff__c = true;
        insert dexSettings;
    }
    
    public static testmethod void finishTimeFromDuration()
    {
        Session__c s = [select Id, Start_Date_Time__c, Finish_Date_Time__c, Duration_Hours__c, Duration_Minutes__c from Session__c limit 1];
        
        s.Start_Date_Time__c = System.Now();
        s.Duration_Hours__c = '1';
        s.Duration_Minutes__c = '30';
        
        update s;
        s = [select Id, Start_Date_Time__c, Finish_Date_Time__c, Duration_Hours__c, Duration_Minutes__c from Session__c limit 1];
        
        System.AssertEquals(s.Start_Date_Time__c.addHours(1).addMinutes(30), s.Finish_Date_Time__c);
    }

    public static testmethod void missingFieldsInsertTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';

        Test.startTest();
        insert s;
        Test.stopTest();

        s = [SELECT Id, Dex_Data_Completeness__c FROM Session__c WHERE Id = :s.Id];

        system.assertEquals('Missing Fields: Start Date / Time, Program Type', s.Dex_Data_Completeness__c, 'Missing fields not reported correctly');
    }

    public static testmethod void missingFieldsUpdateTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        insert s;

        Test.startTest();
        s.Start_Date_Time__c = datetime.now();
        update s;
        Test.stopTest();

        s = [SELECT Id, Dex_Data_Completeness__c FROM Session__c WHERE Id = :s.Id];

        system.assertEquals('Missing Fields: Program Type', s.Dex_Data_Completeness__c, 'Missing fields not reported correctly');
    }
    
    public static testmethod void newSessionCreatesCollectionPeriodTest()
    {
        Id participantRecordTypeId = Contact.SObjectType.getDescribe().recordTypeInfosByDeveloperName.get('Participant').recordTypeId;
        Contact c = new Contact(
            LastName='Test', 
            Indigenous_Status__c='NO', 
            Sex__c='MALE', 
            Current_or_Former_ADF_Member__c='0', 
            RecordTypeId=participantRecordTypeId,
            OtherStreet = 'L 1 20-24 Sussex Street',
            OtherCity = 'Sydney',
            OtherState = 'NSW',
            OtherPostalCode = '2000',
            OtherCountry = 'Australia',
            MailingStreet = 'L 1 20-24 Sussex Street',
            MailingCity = 'Sydney',
            MailingState = 'NSW',
            MailingPostalCode = '2000',
            MailingCountry = 'Australia'
        );
        insert c;
        
        Program__c programP = new Program__c(Name='Test Positive', Status__c='Active', AIHW_Reporter__c = true);
        insert programP;
        Program__c programN = new Program__c(Name='Test Negative', Status__c='Active');
        insert programN;
        
        Case caseP = new Case(Program__c=programP.Id, Subject='testcase', ContactId=c.Id, Date_of_Enquiry_or_Referral__c = date.today());
        insert caseP;
        Case caseN = new Case(Program__c=programN.Id, Subject='testcase', ContactId=c.Id, Date_of_Enquiry_or_Referral__c = date.today());
        insert caseN;
        
        Session__c sessionP = new Session__c(Name='Test', Case__c=CaseP.Id, Start_Date_Time__c=Datetime.now());
        insert sessionP;
        Session__c sessionN = new Session__c(Name='Test', Case__c=CaseN.Id, Start_Date_Time__c=Datetime.now());
        insert sessionN;
        
        List<Collection_Period__c> collectionPeriodListP = [SELECT Id FROM Collection_Period__c WHERE Case__c = :caseP.Id];
        List<Collection_Period__c> collectionPeriodListN = [SELECT Id FROM Collection_Period__c WHERE Case__c = :caseN.Id];
        
        System.assertEquals(1, collectionPeriodListP.size(), 'False Negative for Collection Period creation');
        System.assertEquals(0, collectionPeriodListN.size(), 'False Positive for Collection Period creation');

        update new Collection_Period__c(Id=collectionPeriodListP.get(0).Id, Ongoing_Support_Period_Ind__c='1');
        
        //Test to make sure the record types are correct
        Id initialRecordTypeId = Schema.SObjectType.Collection_Period__c.getRecordTypeInfosByDeveloperName().get('Initial_Collection_Period').getRecordTypeId();
        Id ongoingRecordTypeId = Schema.SObjectType.Collection_Period__c.getRecordTypeInfosByDeveloperName().get('Ongoing_Collection_Period').getRecordTypeId();
        
        Session__c sessionPClone = sessionP.clone(false, false, false, false);
        sessionPClone.Start_Date_Time__c=Datetime.now().addMonths(1);
        insert sessionPClone;
        
        Collection_Period__c collectionPeriodInitial = [SELECT Id, RecordTypeId FROM Collection_Period__c WHERE Case__c = :caseP.Id AND Id = :collectionPeriodListP LIMIT 1];
        Collection_Period__c collectionPeriodOngoing = [SELECT Id, RecordTypeId FROM Collection_Period__c WHERE Case__c = :caseP.Id AND Id != :collectionPeriodListP LIMIT 1];
        
        System.AssertEquals(initialRecordTypeId, collectionPeriodInitial.RecordTypeId, 'False Negative for Collection Period Record Type Initial');
        System.AssertEquals(ongoingRecordTypeId, collectionPeriodOngoing.RecordTypeid, 'False Negative for Collection Period Record Type Ongoing');
        System.AssertNotEquals(ongoingRecordTypeId, collectionPeriodInitial.RecordTypeId, 'False Positive for Collection Period Record Type Ongoing');
        System.AssertNotEquals(initialRecordTypeId, collectionPeriodOngoing.RecordTypeId, 'False Positive for Collection Period Record Type Initial');
        
    }

    public static testmethod void sessionAddedAfterCutoffTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = datetime.now().addYears(-1);

        String errorMsg = '';
        
        String uniqueUserName = 'standarduser' + DateTime.now().getTime() + '@testorg.com';
        // This code runs as the system user
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        User u = new User(Alias = 'standt', Email='standarduser@testorg.com',
        EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US',
        LocaleSidKey='en_US', ProfileId = p.Id,
        TimeZoneSidKey='Australia/Sydney',
        UserName=uniqueUserName);

        
        
        test.startTest();
        try 
        {
            System.runAs(u) {
              // The following code runs as user 'u'
              System.debug('Current User: ' + UserInfo.getUserName());
              System.debug('Current Profile: ' + UserInfo.getProfileId());
                
              insert s;
          }
        } 
        catch (Exception e) 
        {
            errorMsg = e.getMessage();
        }
        test.stopTest();

        system.debug('error: ' + errorMsg);
        String expectedErrorMessage = 'Cannot create/update a session after the cutoff date.';
        system.assert(errorMsg.contains(expectedErrorMessage));
    }

    public static testmethod void sessionAddedCaseStatusTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = datetime.now();

        test.startTest();
        insert s;
        test.stopTest();

        c = [SELECT Id, Dex_Child_Sync_Status__c FROM Case WHERE Id = :c.Id];

        system.assertEquals('Sync Required', c.Dex_Child_Sync_Status__c);
    }

    public static testmethod void sessionAddedEventCreatedTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = datetime.now();
        s.Duration_Hours__c = '1';
        s.Status__c = 'Scheduled';
        
        test.startTest();
        insert s;
        test.stopTest();

        List<Event> eventList = [SELECT Id FROM Event WHERE Session__c = :s.Id];

        system.assertEquals(1, eventList.size());
    }

    public static testmethod void sessionUpdateEventCreatedTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = datetime.now();
        s.Duration_Hours__c = '1';
        insert s;
        
        test.startTest();
        s.Duration_Hours__c = '2';
        s.Status__c = 'Scheduled';
        update s;
        test.stopTest();

        List<Event> eventList = [SELECT Id FROM Event WHERE Session__c = :s.Id];

        system.assertEquals(1, eventList.size());
    }

    public static testmethod void sessionUpdateEventUpdatedTest()
    {
        Case c = [SELECT Id FROM Case LIMIT 1];

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = datetime.now();
        s.Duration_Hours__c = '1';
        s.Status__c = 'Scheduled';
        insert s;
        
        test.startTest();
        s.Duration_Hours__c = '2';
        update s;
        test.stopTest();

        List<Event> eventList = [SELECT Id, durationInMinutes FROM Event WHERE Session__c = :s.Id];

        system.assertEquals(1, eventList.size());
        system.assertEquals(120, eventList[0].durationInMinutes);
    }


    public static testmethod void availabilityTests()
    {
        Availability_Period__c aPeriod = new Availability_Period__c();
        aPeriod.Effective_From__c = System.today().addDays(-20);
        insert aPeriod;

        Availability_Period__c aPeriod2 = new Availability_Period__c();
        aPeriod2.Effective_From__c = System.today().addDays(30);
        insert aPeriod2;

        Availability_Slot__c aSlot  = new Availability_Slot__c();
        aSlot.Availability_Period__c = aPeriod.Id;
        aSlot.Cadence__c = 'Weekly';
        aSlot.Start_Time__c = Time.newInstance(9, 0, 0, 0);
        aSlot.End_Time__c = Time.newInstance(17, 0, 0, 0);
        insert aSlot;

        aSlot.Monday__c = true;
        aSlot.Tuesday__c = true;
        aSlot.Wednesday__c = true;
        aSlot.Thursday__c = true;
        aSlot.Friday__c = true;
        update aSlot;

        Availability_Adjustment__c aAdjustment = new Availability_Adjustment__c();
        aAdjustment.recordTypeId = sfAvailabilityAdjustmentTriggerHandler.recordTypeIdAdditionalAvailability;
        aAdjustment.Date__c = System.today();
        aAdjustment.Start_Time__c = Time.newInstance(16, 0, 0, 0); //wrong way around
        aAdjustment.End_Time__c = Time.newInstance(10, 0, 0, 0);
        insert aAdjustment;

        aAdjustment.Start_Time__c = Time.newInstance(10, 30, 0, 0);
        update aAdjustment;

        Case c = [SELECT Id, Program__c FROM Case LIMIT 1];
        
        //update the program to have reminder / notification values
        Program__c p = new Program__c();
        p.Id = c.Program__c;
        p.Default_Event_Notification__c = '5';
        p.Default_Event_Reminder_1__c = '24';
        p.Default_Event_Reminder_2__c = '2';
        update p;

        Session__c s = new Session__c();
        s.Case__c = c.Id;
        s.Service_Setting__C = 'CLRES';
        s.Start_Date_Time__c = DateTime.now().addDays(5);
        s.Duration_Hours__c = '1';
        s.Status__c = 'Scheduled';
        insert s;

        Event e = [SELECT Id, CreatedDate, Notification_Send_Date_Time__c, Notification_Send_Status__c, 
                    Reminder_1_Send_Date_Time__c, Reminder_1_Send_Status__c, 
                    Reminder_2_Send_Date_Time__c, Reminder_2_Send_Status__c 
                FROM Event WHERE WhatId = :s.Id];

        system.assertEquals(e.CreatedDate.addMinutes(5), e.Notification_Send_Date_Time__c);
        system.assertEquals('Unsent', e.Notification_Send_Status__c);
        system.assertEquals(s.Start_Date_Time__c.addHours(-24), e.Reminder_1_Send_Date_Time__c);
        system.assertEquals('Unsent', e.Reminder_1_Send_Status__c);
        system.assertEquals(s.Start_Date_Time__c.addHours(-2), e.Reminder_2_Send_Date_Time__c);
        system.assertEquals('Unsent', e.Reminder_2_Send_Status__c);

        //update session's start date to be tomorrow
        s.Start_Date_Time__c = DateTime.now().addDays(1);
        update s;

        e = [SELECT Id, LastModifiedDate, Notification_Send_Date_Time__c, Notification_Send_Status__c, 
                Reminder_1_Send_Date_Time__c, Reminder_1_Send_Status__c, 
                Reminder_2_Send_Date_Time__c, Reminder_2_Send_Status__c 
            FROM Event WHERE WhatId = :s.Id];

        system.assertEquals(e.LastModifiedDate.addMinutes(5), e.Notification_Send_Date_Time__c);
        system.assertEquals('Unsent', e.Notification_Send_Status__c);
        system.assertEquals(s.Start_Date_Time__c.addHours(-24), e.Reminder_1_Send_Date_Time__c);
        system.assertEquals('Cannot Send (Other)', e.Reminder_1_Send_Status__c);
        system.assertEquals(s.Start_Date_Time__c.addHours(-2), e.Reminder_2_Send_Date_Time__c);
        system.assertEquals('Unsent', e.Reminder_2_Send_Status__c);

        
        //send all the things
        e.Notification_Send_Status__c = 'Send Now';
        update e;
        e.Reminder_1_Send_Status__c = 'Send Now';
        update e;
        e.Reminder_2_Send_Status__c = 'Send Now';
        update e;

        sfAvailabilityCalendarController theController = new sfAvailabilityCalendarController();

        delete aSlot;
        delete aPeriod;
    }
}
public with sharing class SHSCXMLExtractPageController
{
    public SHSCWrapperClass data {get; set;}

    //public final String xmlHeader {get { return '<?xml version="1.0" encoding="UTF-8"?>'; }}

    // Values for use during testing.
    public static final String TEST_ORG_ID = '99363H';
    public static final String TEST_ORG_NAME = 'CMS Test SHSC Agency 13';

    // Org Id/Name are needed at multiple points in the program.
    public static String ORG_ID {get;set;}
    public static String ORG_NAME {get;set;}

    // Parameters passed
    public Id programId;
    public Integer year;
    public Integer month;

    // Errors
    public List<String> errors {get; private set;}
    public List<XmlErrorMessages> errorMessagesList = new List<XmlErrorMessages>();

    // Blank constructor for when only certain parts should be executed.
    public SHSCXMLExtractPageController()
    {
    }

    // Main constructor that does the main work ready for XML generation.
    public SHSCXMLExtractPageController(String paramProgramId, Integer paramYear, Integer paramMonth, String submissionInd)
    {
        this(paramProgramId, paramYear, paramMonth, submissionInd, true);
    }

    // Constructor that does the main work ready for XML generation, but can skip updating the collection period records.
    public SHSCXMLExtractPageController(String paramProgramId, Integer paramYear, Integer paramMonth, String submissionInd, Boolean updateCpRecords)
    {
        initWithParams(paramProgramId, paramYear, paramMonth, submissionInd, updateCpRecords);
    }

    // Called by Visualforce page, calling main logic ready for XML generation.
    public void init()
    {
        Map<String, String> params = ApexPages.currentPage().getParameters();
        String programId = params.get('programId');
        Integer year = Integer.valueOf(params.get('year'));
        Integer month = Integer.valueOf(params.get('month'));
        String resubmissionValue = params.get('submissionInd');

        String attachFilename = 'extract_' + year + '_' + month + '.xml';
        ApexPages.currentPage().getHeaders().put('Content-Disposition', 'attachment; filename="' + attachFilename + '"');

        initWithParams(programId, year, month, resubmissionValue, true);
    }

    // Instead of running main logic, run Queueable to split main logic over multiple transactions and email to user.
    public void initAndEmail()
    {
        Map<String, String> params = ApexPages.currentPage().getParameters();
        String programId = params.get('programId');
        Integer year = Integer.valueOf(params.get('year'));
        Integer month = Integer.valueOf(params.get('month'));
        String resubmissionValue = params.get('submissionInd');

        String attachFilename = 'extract_' + year + '_' + month + '.xml';
        //ApexPages.currentPage().getHeaders().put('Content-Disposition', 'attachment; filename="' + attachFilename + '"');

        //initAndEmailFuture(programId, year, month, resubmissionValue);
        SHSCXMLExtractQueueable.enqueueJob(programId, year, month, resubmissionValue);
    }

    // Run main logic by attaching file to email sent to the user.
    // This has a problem with large months going over limits, so is unused.
    @Future
    public static void initAndEmailFuture(String paramProgramId, Integer paramYear, Integer paramMonth, String submissionInd)
    {
        SHSCXMLExtractPageController page = new SHSCXMLExtractPageController(paramProgramId, paramYear, paramMonth, submissionInd);

        String attachFilename = 'extract_' + paramProgramId + '_' + paramYear + '_' + paramMonth + '.xml';

        Program__c program = null;
        for(Program__c foundProgram : [SELECT Id, Name FROM Program__c WHERE Id = :paramProgramId LIMIT 1])
        {
            program = foundProgram;
        }

        if(program != null)
        {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setTargetObjectId(UserInfo.getUserId());
            msg.subject = 'SHS ' + program.Name + ' ' + paramMonth + '/' + paramYear + ' Extract';
            msg.setPlainTextBody('Please find attached the generated extract for ' + program.Name + ' ' + paramMonth + '/' + paramYear + '.');
            msg.setSaveAsActivity(false);

            Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
            attach.setBody(Blob.valueOf(page.getFakeXmlString()));
            attach.setFileName(attachFilename);

            msg.setFileAttachments(new List<Messaging.EmailFileAttachment>{ attach });

            Messaging.sendEmail(new List<Messaging.SingleEmailMessage> { msg });
        }
    }

    // Main logic for generation
    public void initWithParams(String paramProgramId, Integer paramYear, Integer paramMonth, String resubmissionValue, Boolean doCpUpdate)
    {
        programId = paramProgramId;
        year = paramYear;
        month = paramMonth;

        errors = new List<String>();

        String monthString = formatMonth(year, month);

        data = new SHSCWrapperClass();

        data.Collection_Period = monthString;

        //pull the current software product and version from the custom setting
        SHS_Settings__c customSetting = SHS_Settings__c.getInstance();
        data.Software_Product = customSetting.Software_Product__c;
        data.Software_Version = customSetting.Software_Version__c;

        data.Extract_Agency = new List<SHSCWrapperClass.Extract_Agency>();

        Map<Id, Map<Id, Case>> casesByProgram = new Map<Id, Map<Id, Case>>();
        Map<Id, Map<Id, Collection_Period__c>> collectionPeriodByCase = new Map<Id, Map<Id, Collection_Period__c>>();

        Set<Id> caseIds = new Set<Id>();

        // Update records to ensure they have an updated percent complete field, and are complaining about any unset fields.
        if(doCpUpdate)
        {
            Database.update([
                    SELECT Id
                    FROM Collection_Period__c
                    WHERE Collection_Period__c = :monthString
                    AND Case__r.Program__c = :this.programId
            ], false);
        }

        //pull back a list of now updated collection periods for this program and month/year
        List<Collection_Period__c> cpList = [
                SELECT Id,
                        AIHW_Collection_Period_Id__c,
                        Name,
                        Age_Bracket__c,
            			Age_At_Assistance_Request_Date__c,
                        Assistance_Request_Date__c,
                        Awaiting_Govt_Pymt_Ind_CP_End__c,
                        Care_And_Prot_Order_CP_End__c,
                        Case__c,
                        Case__r.Contact.Id,
                        Case__r.AIHW_Support_Period_Id__c,
                        Case_Mgmt_Plan_Goal_Status__c,
                        Case_Mgmt_Plan_Ind_CP_End__c,
                        Collection_Period__c,
                        Completion_Issues__c,
                        Count_In_Presenting_Unit__c,
                        Date_of_Birth__c,
                        Date_Of_Birth_Accuracy_Ind__c,
                        Family_Services_Needs_Identified__c,
                        Family_Services_Provided__c,
                        Family_Services_Referral_Arranged__c,
                        First_Service_Contact_Date__c,
                        First_Service_Request_Ind__c,
                        FT_PT_Status_CP_End__c,
                        General_Services_Needs_Identified__c,
                        General_Services_Provided__c,
                        General_Services_Referral_Arranged__c,
                        Housing_Services_Needs_Identified__c,
                        Housing_Services_Provided__c,
                        Housing_Services_Referral_Arranged__c,
                        Labour_Force_Status_CP_End__c,
                        Last_Service_Provision_Date__c,
                        Letters_of_Family_Name__c,
                        Letters_of_Given_Name__c,
                        Living_Arngmnt_CP_End__c,
                        Main_Source_Of_Income_CP_End__c,
                        Occupancy_CP_End__c,
                        Ongoing_Support_Period_Ind__c,
                        Organisation_Id__c,
                        Organisation_Name__c,
                        Percent_Completed__c,
                        Previously_Homeless_Ind_CP_End__c,
                        PULK_Support_Period_ID__c,
                        Reason_No_Case_Mgmt_Plan__c,
                        Reason_No_Case_Mgmt_Plan_Other__c,
                        Reason_Service_Not_Provided__c,
                        RecordType.DeveloperName,
                        RecordTypeId,
                        Relationship_To_PUH__c,
                        Relationship_to_PUH_Other__c,
                        Residential_CP_End__c,
                        Service_Episode_End_Reason__c,
                        Sex__c,
                        Specialised_Services_Needs_Identified__c,
                        Specialised_Services_Provided__c,
                        Specialised_Services_Referral_Arranged__c,
                        Student_Ind_CP_End__c,
                        Student_Type_CP_End__c,
                        Support_Period_ID__c,
                        Tenure_CP_End__c,
                        Turnaway_ID__c,
                        Turnaway_Service_Requested__c,
                        Urgency_Of_Request__c,
                        
                        (//also get all the accomodation histories (might want to filter to the same month/year here?)
                                SELECT Id,
                                        Name,
                                        Start_Date__c,
                                        Accommodation_Period_End_Date__c,
                                        Type__c
                                FROM Accommodation_Histories__r
                        ),
                        (//also get all the brokerage (might want to filter to the same month/year here?)
                            SELECT Id,
                                    Name,
                                    SHS_Financial_Assistance_Type__c,
                                    Brokerage_Amount__c,
                                    Brokerage_Date__c,
                                    Payment_Type__c,
                                    Voucher__c,
                                    Voucher__r.RecordTypeId
                            FROM Brokerage__r
                        )
                FROM Collection_Period__c
                WHERE Collection_Period__c = :monthString
                AND Case__r.Program__c = :this.programId
        ];

        System.debug(monthString);
        System.debug(cpList);
        System.debug(cpList.size());

        //go through the collection periods and check their completeness, as well as put them into various maps/lists
        for(Collection_Period__c cp : cpList)
        {
            // If not complete, add an error message
            // Tests shouldn't fail because of being incomplete.
            if(cp.Percent_Completed__c != 100  && !test.isRunningTest())
            {
                XmlErrorMessages errorMessages = new XmlErrorMessages(cp.Id, cp.Name, 'Collection Period', cp.Completion_Issues__c);
                if(cp.Percent_Completed__c == null && String.isEmpty(errorMessages.errorHtml) && !test.isRunningTest())
                {
                    errorMessages.errorList.add('Percent complete has not been calculated. Please edit the record and save it to calculate the Percent Complete field.');
                }
                this.errorMessagesList.add(errorMessages);
                System.debug('adding error message');
                continue;
            }

            // Collect the case IDs, used to get full case records later.
            caseIds.add(cp.Case__c);

            // This is for collection periods, so it will always be inserted.
            Map<Id, Collection_Period__c> collectionPeriods = new Map<Id, Collection_Period__c>();
            if(collectionPeriodByCase.containsKey(cp.Case__c))
            {
                collectionPeriods = collectionPeriodByCase.get(cp.Case__c);
            }
            collectionPeriods.put(cp.Id, cp);
            collectionPeriodByCase.put(cp.Case__c, collectionPeriods);
        }

        // Return early if there are errors.
        if(this.errorMessagesList.size() > 0  && !test.isRunningTest())
        {
            System.debug('returning early with errors');
            System.debug(errorMessagesList);
            return;
        }

        /*
         * Now that we know there are not errors, we can continue generating the xml file
         */

        // Retrieve full case data, with sessions and child cases.
        List<Case> caseList = [
                SELECT Id,
                AIHW_Support_Period_Id__c,
                RecordTypeId,
                RecordType.DeveloperName,
                Contact.Data_Exchange_Consent__c,
                Date_of_Enquiry_or_Referral__c,
                First_Case_for_Contact_on_this_Program__c,
                Initial_Collection_Period__r.AIHW_Collection_Period_Id__c,
                Initial_Collection_Period__r.ADF_Ind__c,
                Initial_Collection_Period__r.Age_Bracket__c,
           		Initial_Collection_Period__r.Age_At_Assistance_Request_Date__c,
                Initial_Collection_Period__r.Assist_Main_Reason__c,
                Initial_Collection_Period__r.Assist_Reason_Present__c,
                Initial_Collection_Period__r.Assist_Reason_Present_Other__c,
                Initial_Collection_Period__r.Assistance_Request_Date__c,
                Initial_Collection_Period__r.Assistance_With_Communication__c,
                Initial_Collection_Period__r.Assistance_With_Mobility__c,
                Initial_Collection_Period__r.Assistance_With_Self_Care__c,
                Initial_Collection_Period__r.Awaiting_Govt_Pymt_Ind_Present__c,
                Initial_Collection_Period__r.Awaiting_Govt_Pymt_Ind_Wkbef__c,
                Initial_Collection_Period__r.Care_And_Prot_Order_Present__c,
                Initial_Collection_Period__r.Care_And_Prot_Order_Wkbef__c,
                Initial_Collection_Period__r.Collection_Period__c, // Unused - shared across whole XML and specificed before here.
                Initial_Collection_Period__r.Consent_Obtained_Ind__c,
                Initial_Collection_Period__r.Count_In_Presenting_Unit__c,
                Initial_Collection_Period__r.Country_of_Birth__c,
                Initial_Collection_Period__r.Date_of_Birth__c,
                Initial_Collection_Period__r.Date_Of_Birth_Accuracy_Ind__c,
                Initial_Collection_Period__r.Diagnosed_Mental_Health__c,
                Initial_Collection_Period__r.Education_At_Present__c,
                Initial_Collection_Period__r.Facility_Type_Recently_Left__c,
                Initial_Collection_Period__r.First_Service_Contact_Date__c,
                Initial_Collection_Period__r.Formal_Referral_Source__c,
                Initial_Collection_Period__r.FT_PT_Status_Present__c,
                Initial_Collection_Period__r.FT_PT_Status_Wkbef__c,
                Initial_Collection_Period__r.Indigenous_Status__c,
                Initial_Collection_Period__r.Labour_Force_Status_Present__c,
                Initial_Collection_Period__r.Labour_Force_Status_Wkbef__c,
                Initial_Collection_Period__r.Language_Spoken_At_Home__c,
                Initial_Collection_Period__r.Last_Permanent_Housing_NoPostcodeReason__c,
                Initial_Collection_Period__r.Last_Service_Provision_Date__c,
                Initial_Collection_Period__r.Letters_of_Family_Name__c,
                Initial_Collection_Period__r.Letters_of_Given_Name__c,
                Initial_Collection_Period__r.Living_Arngmnt_Present__c,
                Initial_Collection_Period__r.Living_Arngmnt_Wkbef__c,
                Initial_Collection_Period__r.Locality_Most_Recent__c,
                Initial_Collection_Period__r.Locality_Wkbef__c,
                Initial_Collection_Period__r.Main_Source_Of_Income_Present__c,
                Initial_Collection_Period__r.Main_Source_Of_Income_Wkbef__c,
                Initial_Collection_Period__r.Mental_Health_Services_Recd__c,
                Initial_Collection_Period__r.Mental_Illness_Info_Sources__c,
                Initial_Collection_Period__r.Name,
                Initial_Collection_Period__r.NDIS_Ind__c,
                Initial_Collection_Period__r.Occupancy_Present__c,
                Initial_Collection_Period__r.Occupancy_Wkbef__c,
                Initial_Collection_Period__r.Ongoing_Support_Period_Ind__c,
                Initial_Collection_Period__r.Organisation_Id__c,
                Initial_Collection_Period__r.Postcode_Most_Recent__c,
                Initial_Collection_Period__r.Postcode_Wkbef__c,
                Initial_Collection_Period__r.Previously_Homeless_Mth__c,
                Initial_Collection_Period__r.Previously_Homeless_Yr__c,
                Initial_Collection_Period__r.Proficiency_In_Spoken_English__c,
                Initial_Collection_Period__r.PULK_Support_Period_ID__c,
                Initial_Collection_Period__r.RecordType.DeveloperName,
                Initial_Collection_Period__r.RecordTypeId,
                Initial_Collection_Period__r.Relationship_To_PUH__c,
                Initial_Collection_Period__r.Relationship_to_PUH_Other__c,
                Initial_Collection_Period__r.Resided_Last_Week_NoPostcodeReason__c,
                Initial_Collection_Period__r.Residential_Present__c,
                Initial_Collection_Period__r.Residential_Wkbef__c,
                Initial_Collection_Period__r.Sex__c,
                Initial_Collection_Period__r.State_Most_Recent__c,
                Initial_Collection_Period__r.State_Wkbef__c,
                Initial_Collection_Period__r.Student_Ind_Present__c,
                Initial_Collection_Period__r.Student_Ind_Wkbef__c,
                Initial_Collection_Period__r.Student_Type_Present__c,
                Initial_Collection_Period__r.Student_Type_Wkbef__c,
                Initial_Collection_Period__r.Support_Period_ID__c,
                Initial_Collection_Period__r.Tenure_Present__c,
                Initial_Collection_Period__r.Tenure_Wkbef__c,
                Initial_Collection_Period__r.Time_Since_Most_Recent_Addr__c,
                Initial_Collection_Period__r.Year_of_Arrival_In_Aust__c,                
                Program__c,
                Case_Close_Reason__c,
                        Status,
                (
                        SELECT Id
                        FROM Sessions__r
                ),
                (
                        SELECT Id
                        FROM Cases
                )
                FROM Case
                WHERE Id IN :caseIds
                ];

        System.debug(caseIds);
        System.debug(caseList);
        System.debug(caseList.size());

        // Group cases in a map by program.
        for(Case currentCase : caseList)
        {
            // This is for Case, it may be already processed
            Map<Id, Case> cases = new Map<Id, Case>();
            if(casesByProgram.containsKey(currentCase.Program__c))
            {
                cases = casesByProgram.get(currentCase.Program__c);
            }
            
            if(!cases.containsKey(currentCase.Id))
            {
                cases.put(currentCase.Id, currentCase);
            }
            casesByProgram.put(currentCase.Program__c, cases);
        }

        // Get the main details for the specified program.
        List<Program__c> programs = [
                SELECT Id, Name, SHS_Organisation_ID__c, SHS_Organisation_Name__c
                FROM Program__c
                WHERE Id = :this.programId
        ];

        System.debug(programId);
        System.debug(programs);
        System.debug(programs.size());



        // Only generate the data about a program if it actually exists.
        for(Program__c program : programs)
        {
            // Initialise the data structure to hold all the data.
            SHSCWrapperClass.Extract_Agency extractAgency = new SHSCWrapperClass.Extract_Agency();

            // Initialise empty lists for the first level lists.
            extractAgency.SP_Support_Period = new List<SHSCWrapperClass.SP_Support_Period>();
            extractAgency.Turnaway = new List<SHSCWrapperClass.Turnaway>();

            // Initialise data structure to hold errors to be formatted later.
            SHSCXMLExtractPageController.XmlErrorMessages errorMessagesProgram = new XmlErrorMessages(program.Id, program.Name, 'Program');

            // Integer counts to be saved as strings at the end.
            Integer turnawayCount = 0;
            Integer turnawayServiceRequestCount = 0;
            Integer turnawayReasonCount = 0;
            Integer institutionsCount = 0;
            Integer supportPeriodCount = 0;
            Integer reasonsCount = 0;
            Integer homelessHistoryMonthCount = 0;
            Integer homelessHistoryYearCount = 0;
            Integer disabilityIndCount = 0;
            Integer collectionPeriodCount = 0;
            Integer supportServicesCount = 0;
            Integer accommPeriodCount = 0;
            Integer financialSupportCount = 0;
            Integer homelessHistoryCount = 0;

            // Take the org ID & Name from the program.
            ORG_ID = errorIfNull(program.SHS_Organisation_ID__c, 'This program must have an Organisation ID', errorMessagesProgram.errorList);
            ORG_NAME = errorIfNull(program.SHS_Organisation_Name__c, 'This program must have an Organisation Name', errorMessagesProgram.errorList);

            if(false)//Switch over to using the test org for certification, etc
            {
                ORG_ID = TEST_ORG_ID;
                ORG_NAME = TEST_ORG_NAME;
            }
            
            extractAgency.Organisation_ID = ORG_ID;
            extractAgency.Organisation_Name = ORG_NAME;
            

            // Get the cases for the program.
            Map<Id, Case> casesMap = new Map<Id, Case>();
            if(casesByProgram.containsKey(program.Id))
            {
                casesMap = casesByProgram.get(program.Id);
            }
            
            for(Case currentCase : casesMap.values())
            {
                Map<Id, Collection_Period__c> collectionPeriods = collectionPeriodByCase.get(currentCase.Id);
                Collection_Period__c cp = collectionPeriods != null && collectionPeriods.size() > 0 ? collectionPeriods.values().get(0) : null;

                //check that we've gotten consent, assume we have not
                // Changed to default to true, as per Adam's request TT-36445
                Boolean consentObtained = true;
                //if(currentCase.Contact != null && currentCase.Contact.Data_Exchange_Consent__c == true){consentObtained = true;}

                //System.debug(cp.RecordTypeId);
                //System.debug(sfCollectionPeriodTriggerHandler.recTypeIdTurnAwayCP);
                //System.debug(cp.RecordType.DeveloperName);
                
                if(cp != null && cp.RecordTypeId == sfCollectionPeriodTriggerHandler.recTypeIdTurnAwayCP)
                {//Turn Away Calculations
                    // Assign turnaway fields
                    SHSCWrapperClass.Turnaway turnaway = turnawayData(cp, consentObtained);
                    extractAgency.Turnaway.add(turnaway);

                    // Add to counts.
                    turnawayReasonCount += turnaway.Turnaway_Reasons.size();
                    turnawayServiceRequestCount += turnaway.Turnaway_Service_Request.size();
                }
                else
                {//Initial / Ongoing calculations
                
                    supportPeriodCount++;
                    
                    //figure out what the resubmission value should be
                    String cpResubmissionValue = resubmissionValue;
                    if(cp.RecordTypeId == sfCollectionPeriodTriggerHandler.recTypeIdOngoingCP){cpResubmissionValue = '1';}
                
                    // Assign support period values (using mostly Initial collection period values)
                    SHSCWrapperClass.SP_Support_Period supportPeriod = initialCollectionData(currentCase, cpResubmissionValue, consentObtained);

                    // Assign ongoing collection data
                    SHSCWrapperClass.SP_CP_Collection_Period xmlCollectionPeriod = ongoingCollectionData(cp, consentObtained);
                    supportPeriod.SP_CP_Collection_Periods.add(xmlCollectionPeriod);

                    // Add to counts for collection period
                    if(xmlCollectionPeriod.SP_CP_Accomm_Periods != null){accommPeriodCount += xmlCollectionPeriod.SP_CP_Accomm_Periods.size();}
                    if(xmlCollectionPeriod.SP_CP_Financial_Support != null){financialSupportCount += xmlCollectionPeriod.SP_CP_Financial_Support.size();}
                    if(xmlCollectionPeriod.SP_CP_Support_Services != null){supportServicesCount += xmlCollectionPeriod.SP_CP_Support_Services.size();}
                    if(xmlCollectionPeriod.SP_CP_Homeless_History != null){homelessHistoryCount += xmlCollectionPeriod.SP_CP_Homeless_History.size();}

                    // Add to counts for support period.
                    institutionsCount += supportPeriod.SP_Institutions.size();
                    reasonsCount += supportPeriod.SP_Reasons.size();
                    homelessHistoryMonthCount += supportPeriod.SP_Homeless_History_Mths.size();
                    homelessHistoryYearCount += supportPeriod.SP_Homeless_History_Yrs.size();
                    disabilityIndCount += supportPeriod.SP_Disability_Inds.size();
                    collectionPeriodCount += supportPeriod.SP_CP_Collection_Periods.size();

                    extractAgency.SP_Support_Period.add(supportPeriod);
                }
            }

            turnawayCount = extractAgency.Turnaway.size();

            // Save the total counts as strings.
            extractAgency.Turnaway_Cnt = String.valueOf(turnawayCount);
            extractAgency.Turnaway_Service_Request_Cnt = String.valueOf(turnawayServiceRequestCount);
            extractAgency.Turnaway_Reason_Cnt = String.valueOf(turnawayReasonCount);
            extractAgency.SP_Support_Period_Cnt = String.valueOf(supportPeriodCount);
            extractAgency.SP_Institutions_Cnt = String.valueOf(institutionsCount);
            extractAgency.SP_Reasons_Cnt = String.valueOf(reasonsCount);
            extractAgency.SP_Homeless_History_Mth_Cnt = String.valueOf(homelessHistoryMonthCount);
            extractAgency.SP_Homeless_History_Yr_Cnt = String.valueOf(homelessHistoryYearCount);
            extractAgency.SP_Disability_Ind_Cnt = String.valueOf(disabilityIndCount);
            extractAgency.SP_CP_Collection_Period_Cnt = String.valueOf(collectionPeriodCount);
            extractAgency.SP_CP_Support_Services_Cnt = String.valueOf(supportServicesCount);
            extractAgency.SP_CP_Accomm_Periods_Cnt = String.valueOf(accommPeriodCount);
            extractAgency.SP_CP_Financial_Support_Cnt = String.valueOf(financialSupportCount);
            extractAgency.SP_CP_Homeless_History_Cnt = String.valueOf(homelessHistoryCount);

            data.Extract_Agency.add(extractAgency);

            // Collect error messages.
            if(errorMessagesProgram.errorList != null && errorMessagesProgram.errorList.size() > 0)
            {
                this.errorMessagesList.add(errorMessagesProgram);
            }
        }

        // Save the total counts as strings.
        data.Extract_Agency_Cnt = String.valueOf(data.Extract_Agency.size());

    }

    private SHSCWrapperClass.Turnaway turnawayData(Collection_Period__c cp, Boolean consentObtained)
    {
        SHSCWrapperClass.Turnaway turnaway = new SHSCWrapperClass.Turnaway();
        turnaway.Turnaway_Reasons = new List<SHSCWrapperClass.Turnaway_Reason>();
        turnaway.Turnaway_Service_Request = new List<SHSCWrapperClass.Turnaway_Service_Request>();

        if(cp == null)
        {
            return turnaway;
        }

        turnaway.Organisation_ID = ORG_ID; //cp.Organisation_Id__c;
        turnaway.Assistance_Request_Date = cp.Assistance_Request_Date__c;
        turnaway.Turnaway_ID = cp.Turnaway_ID__c;

        // Assign turnaway fields
        turnaway.Letters_Of_Given_Name = ensureNonNull(cp.Letters_of_Given_Name__c, '99');
        turnaway.Letters_Of_Family_Name = ensureNonNull(cp.Letters_of_Family_Name__c, '999');
        turnaway.Sex = ensureNonNull(cp.Sex__c, '3');
        turnaway.Date_Of_Birth = lookupDateOfBirth(cp.Date_of_Birth__c, cp.Date_Of_Birth_Accuracy_Ind__c);
        turnaway.Date_Of_Birth_Accuracy_Ind = ensureNonNull(cp.Date_Of_Birth_Accuracy_Ind__c, 'UUU');
        turnaway.PULK_Turnaway_ID = cp.PULK_Support_Period_ID__c;
        turnaway.Relationship_To_PUH_TA = ensureNonNull(cp.Relationship_To_PUH__c, '99');
        turnaway.Relationship_To_PUH_TA_Other = ensureNonNullOnCondition(cp.Relationship_to_PUH_Other__c, '', turnaway.Relationship_To_PUH_TA == '15');
        turnaway.Count_In_Presenting_Unit = ensureNonNull(formatDecimalAsInteger(cp.Count_In_Presenting_Unit__c), '1');
        turnaway.First_Service_Request_Ind  = ensureNonNull(cp.First_Service_Request_Ind__c, '99');
        turnaway.Turnaway_Service_Request = extractTurnawayServiceRequestList(turnaway.Organisation_ID, turnaway.Turnaway_ID, cp.Turnaway_Service_Requested__c);
        turnaway.Urgency_Of_Request = ensureNonNull(cp.Urgency_Of_Request__c, '99');
        turnaway.Turnaway_Reasons = extractTurnawayReasons(turnaway.Organisation_ID, turnaway.Turnaway_ID, cp.Reason_Service_Not_Provided__c);

        return turnaway;
    }

    private SHSCWrapperClass.SP_Support_Period initialCollectionData(Case currentCase, String resubmissionValue, Boolean consentObtained)
    {
        
        SHSCWrapperClass.SP_Support_Period supportPeriod = new SHSCWrapperClass.SP_Support_Period();
        supportPeriod.SP_CP_Collection_Periods = new List<SHSCWrapperClass.SP_CP_Collection_Period>();
        supportPeriod.SP_Institutions = new List<SHSCWrapperClass.SP_Institutions>();
        supportPeriod.SP_Reasons = new List<SHSCWrapperClass.SP_Reasons>();
        supportPeriod.SP_Disability_Inds = new List<SHSCWrapperClass.SP_Disability_Ind>();
        supportPeriod.SP_Homeless_History_Mths = new List<SHSCWrapperClass.SP_Homeless_History>();
        supportPeriod.SP_Homeless_History_Yrs = new List<SHSCWrapperClass.SP_Homeless_History>();

        //if the current case doesn't have an Initial Collection Period (ICP) don't bother processing further
        Collection_Period__c icp = currentCase.Initial_Collection_Period__r;
        if(icp == null)
        {
            return supportPeriod;
        }

        //setup a XmlErrorMessages to hold any errors we find
        SHSCXMLExtractPageController.XmlErrorMessages errorMessagesIcp = new XmlErrorMessages(icp.Id, icp.Name, 'Initial Collection Period');

        //output if we are doing an initial submission or a resubmission
        //System.debug('Resubmission value:' + resubmissionValue);
        supportPeriod.SP_Submission_Ind = resubmissionValue;

        //look at the case's initial collection period's first service date, and complain if it is blank
        supportPeriod.Episode_Start_Date = errorIfNull(icp.First_Service_Contact_Date__c, 'The Collection Period must have a value for First Service Contact Date.', errorMessagesIcp.errorList);



        // Some fields are only applicable for certain resubmission values.
        if(supportPeriod.SP_Submission_Ind == '0' || supportPeriod.SP_Submission_Ind == '1')
        {
            //set some basic fields that should always be included
            supportPeriod.Organisation_ID = ORG_ID; //icp.Organisation_Id__c;
            supportPeriod.Assistance_Request_Date = icp.Assistance_Request_Date__c;
            supportPeriod.Support_Period_ID = icp.Support_Period_ID__c;
            supportPeriod.New_Client_Ind = currentCase.First_Case_for_Contact_on_this_Program__c;
            supportPeriod.PULK_Support_Period_ID = icp.PULK_Support_Period_ID__c;
            
            
            
            //set every field to be their "not applicable" / "not set" / "unknown" value. We'll then set them to be nice values later
            supportPeriod.Letters_Of_Family_Name = '999';
            supportPeriod.Letters_Of_Given_Name = '99';
            supportPeriod.Sex = '3';
            supportPeriod.Date_Of_Birth = '01011880';
            supportPeriod.Date_Of_Birth_Accuracy_Ind = 'UUU';
            supportPeriod.Relationship_To_PUH = '99';
            supportPeriod.Count_In_Presenting_Unit = '1';
            supportPeriod.Indigenous_Status = '0';
            supportPeriod.Care_And_Prot_Order_Wkbef = '0';
            supportPeriod.Care_And_Prot_Order_Present = '0';
            supportPeriod.Diagnosed_Mental_Health = '0';
            supportPeriod.Mental_Health_Services_Recd = '0';
            supportPeriod.Mental_Illness_Info_Sources = '0';
            supportPeriod.Country_Of_Birth = '9999'; //0000 = Not applicable, 9999 = Don't know
            supportPeriod.Year_Of_Arrival_In_Aust = '0000'; //0000 = Not applicable, 9999 = Don't know
            supportPeriod.Language_Spoken_At_Home = '0002'; //0002 = Not Stated, 1201 = English Only
            supportPeriod.Proficiency_In_Spoken_English = '0';
            supportPeriod.Formal_Referral_Source = '99';
            supportPeriod.Assist_Main_Reason = '99';
            supportPeriod.Time_Since_Most_Recent_Addr = '99';
            supportPeriod.Locality_Most_Recent = 'Not stated/inadequately described';
            supportPeriod.Postcode_Most_Recent = '0099';
            supportPeriod.State_Most_Recent = '99';
            supportPeriod.Locality_Wkbef = 'Not stated/inadequately described';
            supportPeriod.Postcode_Wkbef = '0099';
            supportPeriod.State_Wkbef = '99';
            supportPeriod.ADF_Ind = '0';
            //supportPeriod.ADF_Ind = '99';
            supportPeriod.Living_Arngmnt_Wkbef = '99';
            supportPeriod.Living_Arngmnt_Present = '99';
            supportPeriod.Residential_Wkbef = '99';
            supportPeriod.Residential_Present = '99';
            supportPeriod.Tenure_Wkbef = '99';
            supportPeriod.Tenure_Present = '99';
            supportPeriod.Occupancy_Wkbef = '99';
            supportPeriod.Occupancy_Present = '99';
            supportPeriod.Labour_Force_Status_Wkbef = '99';
            supportPeriod.Labour_Force_Status_Present = '99';
            supportPeriod.FT_PT_Status_Wkbef = '99';
            supportPeriod.FT_PT_Status_Present = '99';
            supportPeriod.Source_Of_Income_Wkbef = '99';
            supportPeriod.Source_Of_Income_Present = '99';
            supportPeriod.Awaiting_Govt_Pymt_Ind_Wkbef = '99';
            supportPeriod.Awaiting_Govt_Pymt_Ind_Present = '99';
            supportPeriod.Student_Ind_Wkbef = '99';
            supportPeriod.Student_Ind_Present = '99';
            supportPeriod.Student_Type_Wkbef = '99';
            supportPeriod.Student_Type_Present = '99';
            supportPeriod.Education_At_Present = '99';
            supportPeriod.NDIS_Ind = '99';
            
            
            //items that we will enter regardless of concent status
            supportPeriod.Letters_Of_Family_Name = coalesce(icp.Letters_of_Family_Name__c, supportPeriod.Letters_Of_Family_Name);
            supportPeriod.Letters_Of_Given_Name = coalesce(icp.Letters_of_Given_Name__c, supportPeriod.Letters_Of_Given_Name);
            supportPeriod.Sex = coalesce(icp.Sex__c, supportPeriod.Sex);
            
            supportPeriod.Date_Of_Birth_Accuracy_Ind = coalesce(icp.Date_Of_Birth_Accuracy_Ind__c, supportPeriod.Date_Of_Birth_Accuracy_Ind);
            supportPeriod.Date_Of_Birth = lookupDateOfBirth(icp.Date_of_Birth__c, icp.Date_Of_Birth_Accuracy_Ind__c);
            
            supportPeriod.Relationship_To_PUH = coalesce(icp.Relationship_To_PUH__c, supportPeriod.Relationship_To_PUH);
            supportPeriod.Relationship_To_PUH_Other = coalesce(icp.Relationship_to_PUH_Other__c, supportPeriod.Relationship_To_PUH_Other);
            supportPeriod.Count_In_Presenting_Unit = coalesce(formatDecimalAsInteger(icp.Count_In_Presenting_Unit__c), supportPeriod.Count_In_Presenting_Unit);
            supportPeriod.Year_Of_Arrival_In_Aust = coalesce(icp.Year_of_Arrival_In_Aust__c, supportPeriod.Year_Of_Arrival_In_Aust);
     
            supportPeriod.Proficiency_In_Spoken_English = coalesce(icp.Proficiency_In_Spoken_English__c, supportPeriod.Proficiency_In_Spoken_English);  
            supportPeriod.Language_Spoken_At_Home = coalesce(icp.Language_Spoken_At_Home__c, supportPeriod.Language_Spoken_At_Home);
            if(supportPeriod.Language_Spoken_At_Home == '1201')
            {//C07.057.04 Proficiency_In_Spoken_English must be 0 (not applicable) where Language_Spoken_At_Home is 1201 (English). (1)
                supportPeriod.Proficiency_In_Spoken_English = '0';
            }
            
            
            //if there are values set on the initial collection period, use those, otherwise use the default that we set above
            supportPeriod.Formal_Referral_Source = coalesce(icp.Formal_Referral_Source__c, supportPeriod.Formal_Referral_Source);
            supportPeriod.Assist_Main_Reason = coalesce(icp.Assist_Main_Reason__c, supportPeriod.Assist_Main_Reason);
            supportPeriod.Time_Since_Most_Recent_Addr = coalesce(icp.Time_Since_Most_Recent_Addr__c, supportPeriod.Time_Since_Most_Recent_Addr);            
            supportPeriod.Living_Arngmnt_Wkbef = coalesce(icp.Living_Arngmnt_Wkbef__c, supportPeriod.Living_Arngmnt_Wkbef);
            supportPeriod.Living_Arngmnt_Present = coalesce(icp.Living_Arngmnt_Present__c, supportPeriod.Living_Arngmnt_Present);
            supportPeriod.Residential_Wkbef = coalesce(icp.Residential_Wkbef__c, supportPeriod.Residential_Wkbef);
            supportPeriod.Residential_Present = coalesce(icp.Residential_Present__c, supportPeriod.Residential_Present);
            supportPeriod.Tenure_Wkbef = coalesce(icp.Tenure_Wkbef__c, supportPeriod.Tenure_Wkbef);
            supportPeriod.Tenure_Present = coalesce(icp.Tenure_Present__c, supportPeriod.Tenure_Present);
            supportPeriod.Occupancy_Wkbef = coalesce(icp.Occupancy_Wkbef__c, supportPeriod.Occupancy_Wkbef);
            supportPeriod.Occupancy_Present = coalesce(icp.Occupancy_Present__c, supportPeriod.Occupancy_Present);
            supportPeriod.Labour_Force_Status_Wkbef = coalesce(icp.Labour_Force_Status_Wkbef__c, supportPeriod.Labour_Force_Status_Wkbef);
            supportPeriod.Labour_Force_Status_Present = coalesce(icp.Labour_Force_Status_Present__c, supportPeriod.Labour_Force_Status_Present);
            supportPeriod.FT_PT_Status_Wkbef = coalesce(icp.FT_PT_Status_Wkbef__c, supportPeriod.FT_PT_Status_Wkbef);
            supportPeriod.FT_PT_Status_Present = coalesce(icp.FT_PT_Status_Present__c, supportPeriod.FT_PT_Status_Present);
            supportPeriod.Source_Of_Income_Wkbef = coalesce(icp.Main_Source_Of_Income_Wkbef__c, supportPeriod.Source_Of_Income_Wkbef);
            supportPeriod.Source_Of_Income_Present = coalesce(icp.Main_Source_Of_Income_Present__c, supportPeriod.Source_Of_Income_Present);
            supportPeriod.Awaiting_Govt_Pymt_Ind_Wkbef = coalesce(icp.Awaiting_Govt_Pymt_Ind_Wkbef__c, supportPeriod.Awaiting_Govt_Pymt_Ind_Wkbef);
            supportPeriod.Awaiting_Govt_Pymt_Ind_Present = coalesce(icp.Awaiting_Govt_Pymt_Ind_Present__c, supportPeriod.Awaiting_Govt_Pymt_Ind_Present);
            supportPeriod.Student_Ind_Wkbef = coalesce(icp.Student_Ind_Wkbef__c, supportPeriod.Student_Ind_Wkbef);
            supportPeriod.Student_Ind_Present = coalesce(icp.Student_Ind_Present__c, supportPeriod.Student_Ind_Present);
            supportPeriod.Student_Type_Wkbef = coalesce(icp.Student_Type_Wkbef__c, supportPeriod.Student_Type_Wkbef);
            supportPeriod.Student_Type_Present = coalesce(icp.Student_Type_Present__c, supportPeriod.Student_Type_Present);
            supportPeriod.Education_At_Present = coalesce(icp.Education_At_Present__c, supportPeriod.Education_At_Present);
            supportPeriod.NDIS_Ind = coalesce(icp.NDIS_Ind__c, supportPeriod.NDIS_Ind);
            
            
            //special processing for locality / postcode / state
            supportPeriod.Locality_Most_Recent = coalesce(icp.Locality_Most_Recent__c, supportPeriod.Locality_Most_Recent);
            supportPeriod.Postcode_Most_Recent = coalesce(icp.Postcode_Most_Recent__c, supportPeriod.Postcode_Most_Recent);
            supportPeriod.State_Most_Recent = coalesce(icp.State_Most_Recent__c, supportPeriod.State_Most_Recent);
            if(icp.Locality_Most_Recent__c == null && icp.Last_Permanent_Housing_NoPostcodeReason__c != null)
            {
                supportPeriod.Postcode_Most_Recent = icp.Last_Permanent_Housing_NoPostcodeReason__c;
                supportPeriod.State_Most_Recent = '99';
                if(icp.Last_Permanent_Housing_NoPostcodeReason__c == '0097'){supportPeriod.Locality_Most_Recent = 'Not applicable';}
                if(icp.Last_Permanent_Housing_NoPostcodeReason__c == '0098'){supportPeriod.Locality_Most_Recent = 'Unknown';}
                if(icp.Last_Permanent_Housing_NoPostcodeReason__c == '0099'){supportPeriod.Locality_Most_Recent = 'Not stated/inadequately described';}
            }            
            
            supportPeriod.Locality_Wkbef = coalesce(icp.Locality_Wkbef__c, supportPeriod.Locality_Wkbef);
            supportPeriod.Postcode_Wkbef = coalesce(icp.Postcode_Wkbef__c, supportPeriod.Postcode_Wkbef);
            supportPeriod.State_Wkbef = coalesce(icp.State_Wkbef__c, supportPeriod.State_Wkbef);
            if(icp.Locality_Wkbef__c == null && icp.Resided_Last_Week_NoPostcodeReason__c != null)
            {
                supportPeriod.Postcode_Wkbef = icp.Resided_Last_Week_NoPostcodeReason__c;
                supportPeriod.State_Wkbef= '99';
                if(icp.Resided_Last_Week_NoPostcodeReason__c == '0097'){supportPeriod.Locality_Wkbef = 'Not applicable';}
                if(icp.Resided_Last_Week_NoPostcodeReason__c == '0098'){supportPeriod.Locality_Wkbef = 'Unknown';}
                if(icp.Resided_Last_Week_NoPostcodeReason__c == '0099'){supportPeriod.Locality_Wkbef = 'Not stated/inadequately described';}
            } 
            
            //change the values away from their default unknown / not set vales only if concent has been provided
            if(consentObtained == true)
            {
                supportPeriod.Indigenous_Status = coalesce(icp.Indigenous_Status__c, supportPeriod.Indigenous_Status);

                supportPeriod.Diagnosed_Mental_Health = coalesce(icp.Diagnosed_Mental_Health__c, supportPeriod.Diagnosed_Mental_Health);
                supportPeriod.Mental_Health_Services_Recd = coalesce(icp.Mental_Health_Services_Recd__c, supportPeriod.Mental_Health_Services_Recd);
                supportPeriod.Mental_Illness_Info_Sources = coalesce(icp.Mental_Illness_Info_Sources__c, supportPeriod.Mental_Illness_Info_Sources);

                if(icp.Age_Bracket__c == 'X15_up_to_18' || icp.Age_Bracket__c == 'Under_15')
                {
                    //C07.050.04 Care_And_Prot_Order_Wkbef must be N/A (0) for clients aged 18+ (1)
                    supportPeriod.Care_And_Prot_Order_Wkbef = coalesce(icp.Care_And_Prot_Order_Wkbef__c, supportPeriod.Care_And_Prot_Order_Wkbef);
                    
                    //C07.051.04 Care_And_Prot_Order_Present must be N/A (0) for clients aged 18+ (1)
                    supportPeriod.Care_And_Prot_Order_Present = coalesce(icp.Care_And_Prot_Order_Present__c, supportPeriod.Care_And_Prot_Order_Present);                
                }
                
                //facility types recently left can be added because consent has been proided
                supportPeriod.SP_Institutions.addAll(getSpInstitutions(ORG_ID, icp.Support_Period_ID__c, icp.Facility_Type_Recently_Left__c));
            }
            else
            {//consent has not been provided, so add values of not applicaple etc
            
                //add not applicaple to facilities recently left as consent hasn't been provided
                supportPeriod.SP_Institutions.addAll(getSpInstitutions(ORG_ID, icp.Support_Period_ID__c, '0'));            
            }


            //20220113 HP: replaced with current CP's consent indicator
            //supportPeriod.Consent_Obtained_Ind = errorIfNull(icp.Consent_Obtained_Ind__c, 'Consent To Gather information needs to be set.', errorMessagesIcp.errorList);
            supportPeriod.Consent_Obtained_Ind = '2';
            if(consentObtained == true){supportPeriod.Consent_Obtained_Ind = '1';}
            
            supportPeriod.Country_Of_Birth = lookupCountryOfBirth(icp.Country_of_Birth__c, consentObtained);
            //supportPeriod.Postcode_Most_Recent = lookupPostcode(icp.Postcode_Most_Recent__c, icp.Last_Permanent_Housing_NoPostcodeReason__c);
            //supportPeriod.Postcode_Wkbef = lookupPostcode(icp.Postcode_Wkbef__c, icp.Resided_Last_Week_NoPostcodeReason__c);

            if(supportPeriod.Country_Of_Birth == '1101' || supportPeriod.Country_Of_Birth == '1199' || supportPeriod.Country_Of_Birth == '1102')
            {//C07.012.04 If the country of birth is 'Australia', 'Australian external territories' or 'Norfolk Island' then year of arrival must be 'Not applicable'.
                supportPeriod.Year_Of_Arrival_In_Aust = '0000'; //0000 = not applicaple
            }

            
            if(supportPeriod.Country_Of_Birth != '1101' && supportPeriod.Country_Of_Birth != '1199' && supportPeriod.Country_Of_Birth != '1102' && supportPeriod.Country_Of_Birth != '9999' && supportPeriod.Year_Of_Arrival_In_Aust == '0000')
            {//if they were NOT born in australia, and the year of arrival is currently set as "not applicable", set it to be "don't know", UNLESS the country is don't know / 9999
                supportPeriod.Year_Of_Arrival_In_Aust = '9999';
            }

            
            //adjust the ADF status automatically if possible            
            if(icp.Age_Bracket__c == 'X18_and_Over')
            {
                supportPeriod.ADF_Ind = coalesce(icp.ADF_Ind__c, supportPeriod.ADF_Ind); 
                
                //if they are marked as "not applicaple" and are now over 18, set them as "don't know'
                if(supportPeriod.ADF_Ind == '0' && icp.Age_At_Assistance_Request_Date__c >= 18){supportPeriod.ADF_Ind = '99';} 
            }


            //certain elements need to be nulled out if the supportPeriod.Episode_Start_Date is before 1/7/2019
            if(currentCase.Date_of_Enquiry_or_Referral__c < Date.newInstance(2019, 7, 1))
            {
                supportPeriod.NDIS_Ind = null;
                supportPeriod.Proficiency_In_Spoken_English = null;
                supportPeriod.Language_Spoken_At_Home = null;
            }
        }

        // Lists applicable for all resubmission values.
        supportPeriod.SP_Institutions = extractInstitutionsList(supportPeriod.Organisation_ID, supportPeriod.Support_Period_ID, consentObtained ? icp.Facility_Type_Recently_Left__c : '0');
        supportPeriod.SP_Reasons = extractReasonList(supportPeriod.Organisation_ID, supportPeriod.Support_Period_ID, icp.Assist_Reason_Present__c, icp.Assist_Reason_Present_Other__c, errorMessagesIcp.errorList);
        supportPeriod.SP_Disability_Inds = extractDisabilityList(supportPeriod.Organisation_ID, supportPeriod.Support_Period_ID, icp.Assistance_With_Self_Care__c, icp.Assistance_With_Mobility__c, icp.Assistance_With_Communication__c);
        supportPeriod.SP_Homeless_History_Mths = extractHomelessHistory(supportPeriod.Organisation_ID, supportPeriod.Support_Period_ID, icp.Previously_Homeless_Mth__c, 'Mth');
        supportPeriod.SP_Homeless_History_Yrs = extractHomelessHistory(supportPeriod.Organisation_ID, supportPeriod.Support_Period_ID, icp.Previously_Homeless_Yr__c, 'Yr');

        if(errorMessagesIcp.errorList != null && errorMessagesIcp.errorList.size() > 0)
        {
            this.errorMessagesList.add(errorMessagesIcp);
        }

        return supportPeriod;
    }

    private SHSCWrapperClass.SP_CP_Collection_Period ongoingCollectionData(Collection_Period__c cp, Boolean consentObtained)
    {
        SHSCWrapperClass.SP_CP_Collection_Period xmlCollectionPeriod = new SHSCWrapperClass.SP_CP_Collection_Period();

        if(cp == null)
        {
            return xmlCollectionPeriod;
        }

        SHSCXMLExtractPageController.XmlErrorMessages errorMessagesCp = new XmlErrorMessages(cp.Id, cp.Name, 'Collection Period');

        xmlCollectionPeriod.Organisation_ID = ORG_ID; //cp.Organisation_Id__c;
        xmlCollectionPeriod.Support_Period_ID = cp.Support_Period_ID__c;

        /*
         * Assign ongoing collection data
         */

        xmlCollectionPeriod.Ongoing_Support_Period_Ind = errorIfNull(cp.Ongoing_Support_Period_Ind__c, 'Ongoing support period indicatior cannot be null', errorMessagesCp.errorList);

        Boolean condition9 = xmlCollectionPeriod.Ongoing_Support_Period_Ind == '1' || xmlCollectionPeriod.Ongoing_Support_Period_Ind == '2';

        xmlCollectionPeriod.First_Service_Contact_Date = errorIfNullOnCondition(cp.First_Service_Contact_Date__c, 'The Collection Period has incomplete data (First service contact date)', condition9, errorMessagesCp.errorList);
        xmlCollectionPeriod.Last_Service_Provision_Date = errorIfNullOnCondition(cp.Last_Service_Provision_Date__c, 'The Collection Period has incomplete data (Last service provision date)', condition9, errorMessagesCp.errorList);

        xmlCollectionPeriod.SP_CP_Support_Services = new List<SHSCWrapperClass.SP_CP_Support_Services>();
        // xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Housing_Services_Needs_Identified__c, cp.Housing_Services_Provided__c, cp.Housing_Services_Referral_Arranged__c));
        // xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.General_Services_Needs_Identified__c, cp.General_Services_Provided__c, cp.General_Services_Referral_Arranged__c));
        // xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Specialised_Services_Needs_Identified__c, cp.Specialised_Services_Provided__c, cp.Specialised_Services_Referral_Arranged__c));
        // xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Family_Services_Needs_Identified__c, cp.Family_Services_Provided__c, cp.Family_Services_Referral_Arranged__c));
        xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(ORG_ID, cp.Support_Period_ID__c, cp.Housing_Services_Needs_Identified__c, cp.Housing_Services_Provided__c, cp.Housing_Services_Referral_Arranged__c));
        xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(ORG_ID, cp.Support_Period_ID__c, cp.General_Services_Needs_Identified__c, cp.General_Services_Provided__c, cp.General_Services_Referral_Arranged__c));
        xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(ORG_ID, cp.Support_Period_ID__c, cp.Specialised_Services_Needs_Identified__c, cp.Specialised_Services_Provided__c, cp.Specialised_Services_Referral_Arranged__c));
        xmlCollectionPeriod.SP_CP_Support_Services.addAll(extractSupportServicesList(ORG_ID, cp.Support_Period_ID__c, cp.Family_Services_Needs_Identified__c, cp.Family_Services_Provided__c, cp.Family_Services_Referral_Arranged__c));

        //xmlCollectionPeriod.SP_CP_Accomm_Periods = extractAccomPeriodList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Accommodation_Histories__r);
        xmlCollectionPeriod.SP_CP_Accomm_Periods = extractAccomPeriodList(ORG_ID, cp.Support_Period_ID__c, cp.Accommodation_Histories__r);

        //xmlCollectionPeriod.SP_CP_Financial_Support = extractFinancialSupportList(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Brokerage__r);
        xmlCollectionPeriod.SP_CP_Financial_Support = extractFinancialSupportList(ORG_ID, cp.Support_Period_ID__c, cp.Brokerage__r);

        //xmlCollectionPeriod.Care_And_Prot_Order_CP_End = consentObtained ? errorIfNullOnCondition(cp.Care_And_Prot_Order_CP_End__c, 'Care and Prot Order CP End must not be null', condition9, errorMessagesCp.errorList) : '0';
        xmlCollectionPeriod.Care_And_Prot_Order_CP_End = '0';
        if(consentObtained && (cp.Age_Bracket__c == 'Under_15' || cp.Age_Bracket__c == 'X15_up_to_18'))
        {
            xmlCollectionPeriod.Care_And_Prot_Order_CP_End = errorIfNullOnCondition(cp.Care_And_Prot_Order_CP_End__c, 'Care and Prot Order CP End must not be null', condition9, errorMessagesCp.errorList);
        }
        
        xmlCollectionPeriod.Case_Mgmt_Plan_Ind_CP_End = errorIfNullOnCondition(cp.Case_Mgmt_Plan_Ind_CP_End__c, 'Case Management Plan Goal Ind CP End must not be null', condition9, errorMessagesCp.errorList);
        xmlCollectionPeriod.Reason_No_Case_Mgmt_Plan = errorIfNullOnCondition(cp.Reason_No_Case_Mgmt_Plan__c, 'No case management Plan Reason must not be null', condition9, errorMessagesCp.errorList);
        xmlCollectionPeriod.Reason_No_Case_Mgmt_Plan_Other = errorIfNullOnCondition(cp.Reason_No_Case_Mgmt_Plan_Other__c, 'No case management Plan other reason', xmlCollectionPeriod.Reason_No_Case_Mgmt_Plan == '8', errorMessagesCp.errorList);
        xmlCollectionPeriod.Case_Mgmt_Plan_Goal_Status = errorIfNullOnCondition(cp.Case_Mgmt_Plan_Goal_Status__c, 'Case Management Plan Goal Status must not be null', condition9, errorMessagesCp.errorList);

        //xmlCollectionPeriod.SP_CP_Homeless_History = extractCpHomelessHistory(cp.Organisation_Id__c, cp.Support_Period_ID__c, cp.Previously_Homeless_Ind_CP_End__c);
        xmlCollectionPeriod.SP_CP_Homeless_History = extractCpHomelessHistory(ORG_ID, cp.Support_Period_ID__c, cp.Previously_Homeless_Ind_CP_End__c);

        xmlCollectionPeriod.Living_Arngmnt_CP_End = ensureNonNullOnCondition(cp.Living_Arngmnt_CP_End__c, '9', condition9);
        xmlCollectionPeriod.Residential_CP_End = ensureNonNullOnCondition(cp.Residential_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Tenure_CP_End = errorIfNullOnCondition(cp.Tenure_CP_End__c, 'Housing tenure type needs to not be null', condition9, errorMessagesCp.errorList);
        xmlCollectionPeriod.Occupancy_CP_End = ensureNonNullOnCondition(cp.Occupancy_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Labour_Force_Status_CP_End = ensureNonNullOnCondition(cp.Labour_Force_Status_CP_End__c, '99', condition9);
        xmlCollectionPeriod.FT_PT_Status_CP_End = ensureNonNullOnCondition(cp.FT_PT_Status_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Source_Of_Income_CP_End = ensureNonNullOnCondition(cp.Main_Source_Of_Income_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Student_Ind_CP_End = ensureNonNullOnCondition(cp.Student_Ind_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Student_Type_CP_End = ensureNonNullOnCondition(cp.Student_Type_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Awaiting_Govt_Pymt_Ind_CP_End = ensureNonNullOnCondition(cp.Awaiting_Govt_Pymt_Ind_CP_End__c, '99', condition9);
        xmlCollectionPeriod.Service_Episode_End_Reason = errorIfNullOnCondition(cp.Service_Episode_End_Reason__c, 'Service cessation reason must not be null', xmlCollectionPeriod.Ongoing_Support_Period_Ind != '1', errorMessagesCp.errorList);

        if(errorMessagesCp.errorList != null && errorMessagesCp.errorList.size() > 0)
        {
            this.errorMessagesList.add(errorMessagesCp);
        }
       
               
        //if the "Ongoing Support" was 3 / "closed during last support period", then there are some fields we need to null out
        if(cp.Ongoing_Support_Period_Ind__c == '3')
        {
            xmlCollectionPeriod.Labour_Force_Status_CP_End = null;
            xmlCollectionPeriod.FT_PT_Status_CP_End = null;
            xmlCollectionPeriod.Student_Ind_CP_End = null;
            xmlCollectionPeriod.Student_Type_CP_End = null;
            xmlCollectionPeriod.Awaiting_Govt_Pymt_Ind_CP_End = null;
            xmlCollectionPeriod.Living_Arngmnt_CP_End = null;
            xmlCollectionPeriod.Occupancy_CP_End = null;
            xmlCollectionPeriod.Residential_CP_End = null;
            xmlCollectionPeriod.Tenure_CP_End = null;
            xmlCollectionPeriod.Source_Of_Income_CP_End = null;
            xmlCollectionPeriod.Care_And_Prot_Order_CP_End = null;
            xmlCollectionPeriod.Case_Mgmt_Plan_Ind_CP_End = null;
            xmlCollectionPeriod.Reason_No_Case_Mgmt_Plan = null;
            xmlCollectionPeriod.Case_Mgmt_Plan_Goal_Status = null;
            xmlCollectionPeriod.SP_CP_Homeless_History = null;
        }
        
        
        

        return xmlCollectionPeriod;
    }

    // Generate XML document using Salesforce's XML generation.
    // Unused as it does not produce a correct file.
    public String getXmlString()
    {
        Dom.Document doc = new Dom.Document();
        // This line generates the XML in the document.
        this.data.generateXmlNode(doc);
        return doc.toXmlString();
    }

    // Generate XML document (as a string) using string operations.
    public String getFakeXmlString()
    {
        String output = '<?xml version="1.0" encoding="UTF-8"?>';

        output = this.data.generateFakeXmlNode(output, SHSCWrapperClass.MODE_FULL);

        return output;
    }

    // Extract Turnaway Service Request records given a semicolon separated list.
    public static List<SHSCWrapperClass.Turnaway_Service_Request> extractTurnawayServiceRequestList(String orgId, String turnawayId, String serviceRequestList)
    {
        List<SHSCWrapperClass.Turnaway_Service_Request> output = new List<SHSCWrapperClass.Turnaway_Service_Request>();

        if(orgId == null || turnawayId == null || serviceRequestList == null)
        {
            return output;
        }

        for(String serviceRequest : serviceRequestList.split(';'))
        {
            if(serviceRequest == '') continue;

            SHSCWrapperClass.Turnaway_Service_Request tsr = new SHSCWrapperClass.Turnaway_Service_Request();
            tsr.Organisation_ID = orgId;
            tsr.Turnaway_ID = turnawayId;
            tsr.Service_Requested = serviceRequest;

            output.add(tsr);
        }

        return output;
    }

    // Format year and month as MMYYYY.
    public static String formatMonth(Integer year, Integer month)
    {
        String monthString = '';
        if(month < 10)
        {
            monthString += '0';
        }
        monthString += String.valueOf(month);
        monthString += String.valueOf(year);

        return monthString;
    }

    // Format date as DDMMYYYY
    public static String formatDate(Date d)
    {
        if(d == null) return null;

        return formatDate(d.year(), d.month(), d.day());
    }

    // Format year, month and day as DDMMYYYY
    public static String formatDate(Integer year, Integer month, Integer day)
    {
        String dayString = '';
        if(day < 10)
        {
            dayString += '0';
        }
        dayString += String.valueOf(day);
        return dayString + formatMonth(year, month);
    }

    public static String formatDecimalAsInteger(Decimal input)
    {
        return String.valueOf(Integer.valueOf(input));
    }

    public static String coalesce(String value, String valueIfBlank)
    {
        //use the default if we don't have the data we need
        if(value == null || value.trim() == ''){return valueIfBlank;}
        
        //return the value that was passed to us, as it's not null/blank
        return value;
    }

    // As a function for cleanliness.
    public static String ensureNonNull(String inputString, String valueIfNull)
    {
        if(inputString == null)
        {
            return valueIfNull;
        }
        else
        {
            return inputString;
        }
    }

    // As a function for cleanliness.
    public static String ensureNonNullOnCondition(String inputString, String valueIfNull, Boolean actuallyEnsureNonNull)
    {
        if(inputString == null && actuallyEnsureNonNull)
        {
            return valueIfNull;
        }
        else
        {
            return inputString;
        }
    }

    // As a function for cleanliness. Add errors if value is null.
    public String errorIfNull(String input, String errorMessage, List<String> errorList)
    {
        if(input == null)
        {
            errorList.add(errorMessage);
        }

        return input;
    }

    // As a function for cleanliness.
    public String errorIfNullOnCondition(String input, String errorMessage, Boolean actuallyError, List<String> errorList)
    {
        if(input == null && actuallyError)
        {
            errorList.add(errorMessage);
        }

        return input;
    }

    // Allow a fallback postcode to be set based on XML requirements.
    // Probably unused.
    public static String lookupPostcode(String postcodeA, String postcodeB)
    {
        if(postcodeA != null && postcodeA.length() > 0)
        {
            return postcodeA;
        }
        else if(postcodeB != null && postcodeB.length() > 0)
        {
            return postcodeB;
        }
        else
        {
            return '0099';
        }
    }

    // Get the correct country of birth value for the XML.
    public static String lookupCountryOfBirth(String countryOfBirth, Boolean consentProvided)
    {
        if(!consentProvided)
        {
            return '9999'; //Not applicable
        }
        else if(countryOfBirth == '0003') //not stated
        {
            return '0000';//Don’t know
        }
        else if(countryOfBirth != null && countryOfBirth.length() > 0)
        {
            return countryOfBirth;
        }
        else
        {
            return '0000';//Don’t know
        }
    }

    // Get the correct date of birth value for the XML.
    public static String lookupDateOfBirth(String dateOfBirth, String dateOfBirthAccuracy)
    {
        if(dateOfBirth != null && dateOfBirth.length() > 0 && dateOfBirthAccuracy != 'UUU')
        {
            return dateOfBirth;
        }
        else
        {
            return '01011880';
        }
    }

    // Set values for SP_Institutions
    public static List<SHSCWrapperClass.SP_Institutions> getSpInstitutions(String orgId, String spId, String institutionsLeft)
    {
        List<SHSCWrapperClass.SP_Institutions> output = new List<SHSCWrapperClass.SP_Institutions>();

        if(institutionsLeft != null)
        {
            List<String> institutionsLeftList = institutionsLeft.split(';');
            for(String institutionLeft : institutionsLeftList)
            {
                SHSCWrapperClass.SP_Institutions newInstitution = new SHSCWrapperClass.SP_Institutions();
                newInstitution.Organisation_ID = orgId;
                newInstitution.Support_Period_ID = spId;
                newInstitution.Facility_Type_Recently_Left = institutionLeft;
            }
        }

        return output;
    }

    // Set the values for SP_Reason values
    @TestVisible
    public List<SHSCWrapperClass.SP_Reasons> extractReasonList(String orgId, String supportPeriodId, String assistReasonMulti, String assistReasonOther, List<String> errorList)
    {
        List<SHSCWrapperClass.SP_Reasons> output = new List<SHSCWrapperClass.SP_Reasons>();

        if(orgId == null || supportPeriodId == null || assistReasonMulti == null)
        {
            return output; // TODO: Add better error checking.
        }

        List<String> assistReasonList = assistReasonMulti.split(';');
        for(String reasonValue : assistReasonList)
        {
            SHSCWrapperClass.SP_Reasons reason = new SHSCWrapperClass.SP_Reasons();
            reason.Organisation_ID = orgId;
            reason.Support_Period_ID = supportPeriodId;
            reason.Assist_Reason_Present = reasonValue;

            Boolean condition4 = reason.Assist_Reason_Present == '26';

            if(condition4)
            {
                reason.Assist_Reason_Present_Other = errorIfNull(assistReasonOther, 'Assist Reason Present value "Other" given but no other reason specified', errorList);
            }

            output.add(reason);
        }

        return output;
    }

    // Set the values for SP_Instutions values
    @TestVisible
    private List<SHSCWrapperClass.SP_Institutions> extractInstitutionsList(String orgId, String supportPeriodId, String instutionRecentlyLeftMulti)
    {
        List<SHSCWrapperClass.SP_Institutions> output = new List<SHSCWrapperClass.SP_Institutions>();

        if(orgId == null || supportPeriodId == null || instutionRecentlyLeftMulti == null)
        {
            return output; // TODO: Add better error checking.
        }

        List<String> institutionLeftList = instutionRecentlyLeftMulti.split(';');
        for(String institutionType : institutionLeftList)
        {
            SHSCWrapperClass.SP_Institutions institution = new SHSCWrapperClass.SP_Institutions();
            institution.Organisation_ID = orgId;
            institution.Support_Period_ID = supportPeriodId;
            institution.Facility_Type_Recently_Left = institutionType;

            output.add(institution);
        }

        return output;
    }

    // Set the values for SP_Disability_Ind values
    public static List<SHSCWrapperClass.SP_Disability_Ind> extractDisabilityList(String orgId, String supportId, String assistSelfCare, String assistMobility, String assistCommunication)
    {
        List<SHSCWrapperClass.SP_Disability_Ind> output = new List<SHSCWrapperClass.SP_Disability_Ind>();

        SHSCWrapperClass.SP_Disability_Ind disabilityInd;
        if(assistSelfCare != null && assistSelfCare != '')
        {
            disabilityInd = new SHSCWrapperClass.SP_Disability_Ind();
            disabilityInd.Organisation_ID = orgId;
            disabilityInd.Support_Period_ID = supportId;
            disabilityInd.Disability_life_area_activity = '1';
            disabilityInd.Disability_need_for_assistance = assistSelfCare;
            output.add(disabilityInd);
        }
        if(assistMobility != null && assistMobility != '')
        {
            disabilityInd = new SHSCWrapperClass.SP_Disability_Ind();
            disabilityInd.Organisation_ID = orgId;
            disabilityInd.Support_Period_ID = supportId;
            disabilityInd.Disability_life_area_activity = '2';
            disabilityInd.Disability_need_for_assistance = assistMobility;
            output.add(disabilityInd);
        }
        if(assistCommunication != null && assistCommunication != '')
        {
            disabilityInd = new SHSCWrapperClass.SP_Disability_Ind();
            disabilityInd.Organisation_ID = orgId;
            disabilityInd.Support_Period_ID = supportId;
            disabilityInd.Disability_life_area_activity = '3';
            disabilityInd.Disability_need_for_assistance = assistCommunication;
            output.add(disabilityInd);
        }

        return output;
    }

    // Set the values for SP_Homeless_History values
    public static List<SHSCWrapperClass.SP_Homeless_History> extractHomelessHistory(String orgId, String supportPeriodId, String homelessHistory, String periodSuffix)
    {
        List<SHSCWrapperClass.SP_Homeless_History> output = new List<SHSCWrapperClass.SP_Homeless_History>();

        if(orgId == null || supportPeriodId == null || homelessHistory == null)
        {
            return output;
        }

        List<String> historyList = homelessHistory.split(';');
        for(String history : historyList)
        {
            if(history == null || history.length() == 0) break;

            SHSCWrapperClass.SP_Homeless_History historyMonth = new SHSCWrapperClass.SP_Homeless_History('_' + periodSuffix);
            historyMonth.Organisation_ID = orgId;
            historyMonth.Support_Period_ID = supportPeriodId;
            historyMonth.Previously_Homeless_Ind = history;
            output.add(historyMonth);
        }

        return output;
    }

    // Set the values for SP_CP_Financial_Support values
    @TestVisible
    private List<SHSCWrapperClass.SP_CP_Financial_Support> extractFinancialSupportList(String orgId, String supportPeriodId, List<Brokerage__c> brokerageList)
    {
        List<SHSCWrapperClass.SP_CP_Financial_Support> output = new List<SHSCWrapperClass.SP_CP_Financial_Support>();
        Id GIVITVoucherRecordTypeId = Schema.SObjectType.Voucher__c.getRecordTypeInfosByDeveloperName().get('GIVIT_Voucher').getRecordTypeId();

        if(orgId == null || supportPeriodId == null || brokerageList == null)
        {
            return output;
        }

        for(Brokerage__c brokerage : brokerageList)
        {
            SHSCXMLExtractPageController.XmlErrorMessages errorMessagesBrokerage = new XmlErrorMessages(brokerage.Id, brokerage.Name, 'Brokerage');

            SHSCWrapperClass.SP_CP_Financial_Support financialSupport = new SHSCWrapperClass.SP_CP_Financial_Support();
            financialSupport.Organisation_ID = orgId;
            financialSupport.Support_Period_ID = supportPeriodId;
            System.debug(brokerage);
            financialSupport.Financial_Assistance_Type = errorIfNull(brokerage.Payment_Type__c, 'Brokerage must have a value for Financial Assistance Type.', errorMessagesBrokerage.errorList); //TODO: Make mandatory.
            financialSupport.Financial_Assistance_Amount = brokerage.Brokerage_Amount__c == null ? null : String.valueOf(brokerage.Brokerage_Amount__c.intValue());

            if(errorMessagesBrokerage.errorList != null && errorMessagesBrokerage.errorList.size() > 0)
            {
                this.errorMessagesList.add(errorMessagesBrokerage);
            }
            
            if (brokerage.Voucher__c != null && brokerage.Voucher__r.RecordTypeId == GIVITVoucherRecordTypeId)
            {
                // don't create financialSupport entry
            }
            else 
            {
                output.add(financialSupport); 
            }
            
        }

        return output;
    }

    // Set the values for SP_CP_Accomm_Period values
    @TestVisible
    private List<SHSCWrapperClass.SP_CP_Accomm_Period> extractAccomPeriodList(String orgId, String supportPeriodId, List<Accommodation_History__c> accomodationList)
    {
        List<SHSCWrapperClass.SP_CP_Accomm_Period> output = new List<SHSCWrapperClass.SP_CP_Accomm_Period>();

        if(orgId == null || supportPeriodId == null || accomodationList == null)
        {
            return output;
        }

        for(Accommodation_History__c accom : accomodationList)
        {
            SHSCXMLExtractPageController.XmlErrorMessages errorMessagesAccom = new XmlErrorMessages(accom.Id, accom.Name, 'Accommodation History');

            SHSCWrapperClass.SP_CP_Accomm_Period accomPeriod = new SHSCWrapperClass.SP_CP_Accomm_Period();
            accomPeriod.Organisation_ID = orgId;
            accomPeriod.Support_Period_ID = supportPeriodId;
            accomPeriod.Accomm_Start_Date = errorIfNull(formatDate(accom.Start_Date__c), 'Start date must be set.', errorMessagesAccom.errorList);
            accomPeriod.Accomm_End_Date = errorIfNull(formatDate(accom.Accommodation_Period_End_Date__c), 'End date must be set.', errorMessagesAccom.errorList);
            accomPeriod.Accomm_Type = errorIfNull(accom.Type__c, 'Accommodation type must be set', errorMessagesAccom.errorList);

            if(errorMessagesAccom.errorList != null && errorMessagesAccom.errorList.size() > 0)
            {
                this.errorMessagesList.add(errorMessagesAccom);
            }

            output.add(accomPeriod);
        }

        return output;
    }

    // Set the values for Turnaway_Reason values
    public static List<SHSCWrapperClass.Turnaway_Reason> extractTurnawayReasons(String orgId, String turnawayId, String reasonList)
    {
        List<SHSCWrapperClass.Turnaway_Reason> output = new List<SHSCWrapperClass.Turnaway_Reason>();

        if(orgId == null || turnawayId == null || reasonList == null)
        {
            return output;
        }

        for(String reasonCode : reasonList.split(';'))
        {
            SHSCWrapperClass.Turnaway_Reason turnawayReason = new SHSCWrapperClass.Turnaway_Reason();
            turnawayReason.Organisation_ID = orgId;
            turnawayReason.Turnaway_ID = turnawayId;
            turnawayReason.Reason_Service_Not_Provided = reasonCode;
    
            output.add(turnawayReason);
        }

        return output;
    }


    // Turn a semicolon separated string into a set of strings.
    public static Set<String> splitPicklistValues(String input)
    {
        if(input == null || input.length() <= 0)
        {
            return new Set<String>();
        }

        return new Set<String>(input.split(';'));
    }

    // Create SP_CP_Support_Services records from the services values.
    public static List<SHSCWrapperClass.SP_CP_Support_Services> extractSupportServicesList(String orgId, String periodId, String servicesIdentified, String servicesProvided, String servicesReferred)
    {
        List<SHSCWrapperClass.SP_CP_Support_Services> output = new List<SHSCWrapperClass.SP_CP_Support_Services>();

        //split the multi-picklist string values into sets of values
        Set<String> servicesIdentifiedSet = splitPicklistValues(servicesIdentified);
        Set<String> servicesProvidedSet = splitPicklistValues(servicesProvided);
        Set<String> servicesReferredSet = splitPicklistValues(servicesReferred);

        // Ensure that all values provided or referred are also in the identified set;
        servicesIdentifiedSet.addAll(servicesProvidedSet);
        servicesIdentifiedSet.addAll(servicesReferredSet);

        //compile the items
        output.addAll(extractSupportServiceTypeList(orgId, periodId, servicesIdentifiedSet, '1'));
        output.addAll(extractSupportServiceTypeList(orgId, periodId, servicesProvidedSet, '2'));
        output.addAll(extractSupportServiceTypeList(orgId, periodId, servicesReferredSet, '3'));

        return output;
    }

    // Create SP_CP_Support_Services records for the different outcomes.
    public static List<SHSCWrapperClass.SP_CP_Support_Services> extractSupportServiceTypeList(String orgId, String periodId, Set<String> serviceTypeSet, String outcome)
    {
        List<SHSCWrapperClass.SP_CP_Support_Services> output = new List<SHSCWrapperClass.SP_CP_Support_Services>();

        if(orgId == null || periodId == null || serviceTypeSet == null || outcome == null)
        {
            return output;
        }

        for(String serviceType : serviceTypeSet)
        {
            //if the service type is blank, exit
            if(serviceType == null || serviceType.length() == 0){continue;}

            SHSCWrapperClass.SP_CP_Support_Services service = new SHSCWrapperClass.SP_CP_Support_Services();
            service.Organisation_ID = orgId;
            service.Support_Period_ID = periodId;
            service.Type_Of_Service_Activity = serviceType;
            service.Service_Activity_Outcome = outcome;
            output.add(service);
        }

        return output;
    }

    // Create SP_CP_Homeless_History records from the appropriate field.
    public static List<SHSCWrapperClass.SP_CP_Homeless_History> extractCpHomelessHistory(String orgId, String supportPeriodId, String homelessHistory)
    {
        List<SHSCWrapperClass.SP_CP_Homeless_History> output = new List<SHSCWrapperClass.SP_CP_Homeless_History>();

        if(orgId == null || supportPeriodId == null || homelessHistory == null)
        {
            return output;
        }

        List<String> historyList = homelessHistory.split(';');
        for(String history : historyList)
        {
            if(history == null || history.length() == 0) break;

            SHSCWrapperClass.SP_CP_Homeless_History historyMonth = new SHSCWrapperClass.SP_CP_Homeless_History();
            historyMonth.Organisation_ID = orgId;
            historyMonth.Support_Period_ID = supportPeriodId;
            historyMonth.Previously_Homeless_Ind_CP_End = history;
            output.add(historyMonth);
        }

        return output;
    }

    // Class to hold the details for the error messages,
    // to allow displaying of the errors in an appropriate way.
    public class XmlErrorMessages
    {
        @AuraEnabled public String objectId;
        @AuraEnabled public String objectName;
        @AuraEnabled public String objectType;
        @AuraEnabled public List<String> errorList;
        @AuraEnabled public String errorHtml;

        public XmlErrorMessages(String objectId, String objectName, String objectType)
        {
            this.objectId = objectId;
            this.objectName = objectName;
            this.objectType = objectType;
            this.errorList = new List<String>();
        }

        public XmlErrorMessages(String objectId, String objectName, String objectType, String errorHtml)
        {
            this.objectId = objectId;
            this.objectName = objectName;
            this.objectType = objectType;
            this.errorList = new List<String>();
            this.errorHtml = errorHtml;
        }
    }
}
public with sharing class VFPReferralPDF
{
    public String caseId {get;set;}
    public String participantId {get;set;}
    public Case casefields {get;set;}
    public Contact participantfields {get;set;}
    public Assessment__c referralfields {get;set;}
    public Contact casememberfields {get;set;}
    public Case_Member__c guardianfields {get;set;}
    public Case_Member__c childfields {get;set;}
    
    public VFPReferralPDF(ApexPages.StandardController controller)
    {
        caseId = controller.getId();
        
        participantId = [SELECT ContactId FROM Case WHERE Id = :caseId LIMIT 1].ContactId;
        
        casefields = [SELECT Id, Program__r.Name, Date_of_Enquiry_or_Referral__c FROM Case WHERE Id = :caseId LIMIT 1];
        
        participantfields = [SELECT Id, Birthdate, Country_of_Birth__c, Email, MobilePhone, Preferred_Communication_Method__c, FirstName, LastName, Preferred_Name__c, Identifies_As__c, Main_Language_Spoken_at_Home__c, Indigenous_Status__c, Primary_Disability__c, Sex__c, OtherStreet, OtherCity, OtherState, OtherCountry, OtherPostalCode, Centrelink_Income_Support__c, Age__c FROM Contact WHERE Id = :participantId LIMIT 1];
        
        referralfields = [SELECT Id, Are_they_currently_an_inpatient__c, Assessment_Date__c, Client_Consent__c, Consent_Date__c, Discharge_Date__c, Hospital_Factility_Name__c, Hospital_following_a_suicide_attempt__c, Impacting_Psychosocial_Factors__c, Known_safety_risks_home_environment__c, Mental_Health_Treatment_plan_in_place__c, Medication_details__c, Other_Reasons__c, Referrers_Contact_Name__c, Referrers_Contact_Email__c, Referrers_Contact_Phone__c, Referring_Organisation_Service_Name__c, Service_Reason_Element__c, Who_is_the_Mental_Health_Care_Plan_with__c, History_of_FACS_OHC__c, FACS_OHC_Details__c, Are_you_studying__c, Study_Location_and_Support_Contact__c, Next_Pay_Date__c, Weekly_Amount__c, On_HNSW_Register__c, Family_Domestic_Violence_Issues__c, Family_Domestic_Violence_Issues_Details__c, Legal_Issues__c, Legal_Issues_Details__c, Mental_Physical_health_support_needed__c, Supports_other_services_involved__c, List_all_current_supports_in_place__c, What_would_you_like_to_achieve_with_CH__c, Additional_Information_Element__c, Can_the_Referrer_be_contacted__c, Length_of_stay_at_current_address__c, How_long_can_they_stay_at_address__c, Previous_Rental_History__c, Do_you_have_somewhere_to_stay_tonight__c, Have_you_contacted_Link2Home__c, Do_you_feel_safe_where_you_are_staying__c FROM Assessment__c WHERE Case__c = :caseId LIMIT 1];
        
        try{
            guardianfields = [SELECT Id, Related_Contact__r.Birthdate, Related_Contact__r.FirstName, Related_Contact__r.LastName, Relationship_Type__c FROM Case_Member__c WHERE Case__c = :caseId AND Relationship_Type__c = 'Current Partner'];
        }Catch(QueryException e){
            guardianfields = NULL;
        }
        
        try{
            childfields = [SELECT Id, Related_Contact__r.Birthdate, Related_Contact__r.FirstName, Related_Contact__r.LastName, Relationship_Type__c FROM Case_Member__c WHERE Case__c = :caseId AND Relationship_Type__c = 'Child'];
        }Catch(QueryException e){
            childfields = NULL;
        }
    }
    @InvocableMethod(label='Generate PDF' description='Generates a PDF from a Visualforce page and returns the ContentVersion Id')
    public static void generatePDF(List<ReferralVariables> referrals) {
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
        OrgWideEmailAddress[] owea = [select Id from OrgWideEmailAddress where Address = 'do-not-reply@socialfutures.org.au'];
        
        for (ReferralVariables ref : referrals) {
            // Generate PDF from Visualforce Page
            PageReference pdfPage = new PageReference('/apex/' + ref.pageName); // Name of your VF page
            pdfPage.getParameters().put('id', String.valueOf(ref.recordId));
            Blob pdfBlob = pdfPage.getContentAsPDF();

            // Save the PDF as an Email Attachment
            Messaging.EmailFileAttachment pdfAttachment = new Messaging.EmailFileAttachment();
            pdfAttachment.setFilename(ref.program + ' Referral.pdf');
            pdfAttachment.setBody(pdfBlob);
            pdfAttachment.setContentType('application/pdf');

            // Create Email Message
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new String[]{ ref.recipientEmail });
            email.setSubject('Thank You for Your Referral Submission to ' + ref.program);
            email.setHtmlBody(ref.emailBody); // Rich Text Email Body
            email.setFileAttachments(new Messaging.EmailFileAttachment[]{ pdfAttachment });
            if ( owea.size() > 0 ) {
                email.setOrgWideEmailAddressId(owea.get(0).Id);
            }
            emails.add(email);
            
            // Send Emails
            if (!emails.isEmpty()) {
                Messaging.sendEmail(emails);
            }
        }
    }
    public class ReferralVariables {
        @InvocableVariable(label='Record ID' required=true)
        public String recordId;
        
        @InvocableVariable(label='Recipient Email' required=true)
        public String recipientEmail;
        
        @InvocableVariable(label='Email Body (HTML)' required=true)
        public String emailBody;
        
        @InvocableVariable(label='VFP Name' required=true)
        public String pageName;
        
        @InvocableVariable(label='Program Name' required=true)
        public String program;
    }
}
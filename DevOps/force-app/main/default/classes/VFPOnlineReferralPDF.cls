//Current Version
public with sharing class VFPOnlineReferralPDF
{
    public String referralId {get;set;}
    public Online_Referral__c referralfields {get;set;}
    
    public VFPOnlineReferralPDF(ApexPages.StandardController controller)
    {
        referralId = controller.getId();
        
        referralfields = [SELECT ATSI_Status__c, Best_Time_to_Contact__c, City__c, Consent_to_Contact_Date__c, Contact_to_begin_the_intake_process__c, Country__c, CreatedById, Date_of_Birth__c, Date_Parent_Guardian_Consented__c, Date_Young_Person_Consented__c, Date_of_Referral__c, Date_of_Referral_PDF__c, Email_Address__c, Emergency_Contact_Email__c, Emergency_Contact_Name__c, Emergency_Contact_Phone__c, First_Name__c, Gender_Identity__c, How_did_the_Parent_Guardian_Consent__c, How_did_the_Young_Person_Consent__c, Intake_Contact_Phone__c, Is_an_Interpreter_Needed__c, Language__c, Language_Spoken_at_Home__c, LastModifiedById, Last_Name__c, Living_Situation__c, Name, Other_Services_or_Agencies__c, OwnerId, Parent_Guardian_Consent__c, Phone_Number__c, Postcode__c, Preferred_Name__c, Pronouns__c, RecordTypeId, Referrer_Email__c, Referrer_Name__c, Referrer_Organisation__c, Referrer_Phone__c, Referrer_Position__c, Relationship_to_Young_Person__c, Safety_plan_in_place__c, Safety_Risks_or_Concerns__c, Safety_Risks_or_Concerns_Description__c, Sex_Assigned_at_Birth__c, State__c, Street__c, Support_Information__c, Young_Person_Challenges__c, Young_Person_given_consent_to_contact__c, Young_Person_Name__c FROM Online_Referral__c WHERE Id = :referralId LIMIT 1];
    }
    @InvocableMethod(label='Generate PDF' description='Generates a PDF from a Visualforce page and returns the ContentVersion Id')
    public static void generateOnlineReferralPDF(List<ReferralVariables> referrals) {
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
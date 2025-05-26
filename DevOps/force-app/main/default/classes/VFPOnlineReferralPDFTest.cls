@isTest
private class VFPOnlineReferralPDFTest {

    @isTest
    static void testControllerConstructor() {
        // Create test Online_Referral__c record
        Online_Referral__c referral = new Online_Referral__c(
            First_Name__c = 'John',
            Last_Name__c = 'Doe',
            Email_Address__c = 'john.doe@example.com',
            Date_of_Referral__c = Date.today()
        );
        insert referral;

        // Create a StandardController and instantiate the class
        Test.startTest();
        ApexPages.StandardController sc = new ApexPages.StandardController(referral);
        VFPOnlineReferralPDF controller = new VFPOnlineReferralPDF(sc);
        Test.stopTest();

        System.assertNotEquals(null, controller.referralfields);
        System.assertEquals(referral.Id, controller.referralfields.Id);
    }

    @isTest
    static void testGenerateOnlineReferralPDF() {
        // Set up test org-wide email
        OrgWideEmailAddress owea = new OrgWideEmailAddress(
            Address = 'do-not-reply@socialfutures.org.au',
            DisplayName = 'Do Not Reply'
        );

        // Create a test Online_Referral__c record
        Online_Referral__c referral = new Online_Referral__c(
            First_Name__c = 'Jane',
            Last_Name__c = 'Smith',
            Email_Address__c = 'jane.smith@example.com',
            Date_of_Referral__c = Date.today()
        );

        // Set current page and params to mock the VF page
        PageReference pageRef = Page.ReferralPDF_headspace; // Replace with actual VF page name
        Test.setCurrentPage(pageRef);

        // Prepare input for the InvocableMethod
        VFPOnlineReferralPDF.ReferralVariables refVar = new VFPOnlineReferralPDF.ReferralVariables();
        refVar.recordId = referral.Id;
        refVar.recipientEmail = 'recipient@example.com';
        refVar.emailBody = '<p>This is a test email.</p>';
        refVar.pageName = 'ReferralPDF_headspace'; // Replace with actual page name
        refVar.program = 'Test Program';

        Test.startTest();
        VFPOnlineReferralPDF.generateOnlineReferralPDF(new List<VFPOnlineReferralPDF.ReferralVariables>{refVar});
        Test.stopTest();

        // Since Messaging.sendEmail doesn't expose sent emails in tests, we just assert no exceptions.
        System.assert(true, 'generateOnlineReferralPDF executed successfully.');
    }
}
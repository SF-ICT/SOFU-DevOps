public class CaseReviewPDF {
    
    public Case c {get;set;}
    public List<Case_Review__c> caseReviews {get; set;}

    public String exportTime {get;set;}
    public String dateOfReferralTime {get;set;}
    public String dateClosedTime {get;set;}
    
    public CaseReviewPDF(ApexPages.StandardController controller) {
        
        String caseId = apexpages.currentpage().getparameters().get('id');

        //query the case for specific fields
        c = [SELECT id, Contact.FullName__c,  Contact.Contact_Number__c, CaseNumber, OwnerId, Case_Owner_Full_Name__c, Program_Name__c, Date_of_Enquiry_or_Referral__c, ClosedDate FROM Case WHERE id = :caseId];
        
        //query all of this case's case reviews ordered by its creation date
        caseReviews = [SELECT id, Case_Plan_Goals__c, Name, Contact_Frequency__c, CSAT_Survey_Completed_If_Closing__c, Current_Situation__c, Date_Of_Review__c, General_Comments_Notes__c, Initial_Outcome_Star_Completed__c, Reviewer__r.FullName__c, Multidisciplinary_Review__c, Number_of_Outcomes_Star_Completed__c, Program_Worker__r.FullName__c, Risks__c, Specialist_Reviewer_1__r.FullName__c, Specialist_Reviewer_2__r.FullName__c, Specialist_Reviewer_3__r.FullName__c, Specialist_Reviewer_4__r.FullName__c FROM Case_Review__c WHERE Case__c = :caseId];        
        exportTime = GmtToAest(System.Now());
        
        //dateOfReferralTime = GmtToAest(c.Date_of_Enquiry_or_Referral__c);
        //dateClosedTime = GmtToAest(c.ClosedDate);
    }
    
    public String GmtToAest(DateTime dt) {
        String strConvertedDate = dt.format('MM/dd/yyyy HH:mm:ss', 'Australia/Sydney');
        return strConvertedDate;
    }
    
}
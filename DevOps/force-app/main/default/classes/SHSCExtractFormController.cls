/**
 * Created by james on 4/8/20.
 */

public with sharing class SHSCExtractFormController
{
    // Get the list of AIHW/SHSC programs to pick from.
    @AuraEnabled(Cacheable=true)
    public static List<PicklistOption> getPrograms()
    {
        List<PicklistOption> outputList = new List<PicklistOption>();

        // Get the programs
        List<Program__c> programList = [
                SELECT Id, Name
                FROM Program__c
                WHERE Status__c = 'Active'
                AND AIHW_Reporter__c = TRUE
                AND COI__c = FALSE
        ];
        for(Program__c program : programList)
        {
            // Turn the records into picklist values.
            outputList.add(new PicklistOption(program.Name, program.Id));
        }

        return outputList;
    }

    // Run the main logic to gather any error messages, without the XML conversion.
    @AuraEnabled
    public static List<SHSCXMLExtractPageController.XmlErrorMessages> checkData(String programId, Integer year, Integer month, String submissionInd, Boolean updateCollectionPeriods)
    {
        List<SHSCXMLExtractPageController.XmlErrorMessages> errorList = new List<SHSCXMLExtractPageController.XmlErrorMessages>();

        // Check the parameters are all present.
        if(programId == null || programId == '' || year == null || month == null || submissionInd == null)
        {
            // If this is coming from the form, all things should be filled out. So this should never happen.
            errorList.add(new SHSCXMLExtractPageController.XmlErrorMessages('', '', 'XML Parameters', 'Not all parameters are filled in correctly. Please provide a programId, year, month and submission indicator'));
            return errorList;
        }

        if(updateCollectionPeriods == null) updateCollectionPeriods = true;

        // Run the main logic for the program and month.
        SHSCXMLExtractPageController xmlPage = new SHSCXMLExtractPageController(programId, year, month, submissionInd, updateCollectionPeriods);

        // Gather up error messages for display in an error message.
        if(xmlPage.errorMessagesList != null && xmlPage.errorMessagesList.size() > 0)
        {
            errorList = xmlPage.errorMessagesList;

            // Convert any error lists not in HTML to HTML.
            for(SHSCXMLExtractPageController.XmlErrorMessages errorItem : errorList)
            {
                if(String.isEmpty(errorItem.errorHtml) && errorItem.errorList != null && errorItem.errorList.size() > 0)
                {
                    String outputHtml = '<ul>';
                    for(String errorString : errorItem.errorList)
                    {
                        outputHtml += '<li>' + errorString + '</li>';
                    }
                    outputHtml += '</ul>';
                    errorItem.errorHtml = outputHtml;
                }
            }
        }

        return errorList;
    }

    @AuraEnabled
    public static List<String> getCollectionPeriodForProgram(String programId, Integer year, Integer month)
    {
        // Check the parameters are all present.
        if(programId == null || programId == '' || year == null || month == null)
        {
            // If this is coming from the form, all things should be filled out. So this should never happen.
            return new List<String>();
        }

        String monthString = SHSCXMLExtractPageController.formatMonth(year, month);

        List<String> periodIds = new List<String>();
        for(Collection_Period__c cp : [ SELECT Id FROM Collection_Period__c WHERE Collection_Period__c = :monthString AND Case__r.Program__c = :programId ])
        {
            periodIds.add(cp.Id);
        }

        return periodIds;
    }

    @AuraEnabled
    public static List<String> updateCollectionPeriods(String programId, Integer year, Integer month, List<String> collectionPeriodIds)
    {
        // Check the parameters are all present.
        if(programId == null || programId == '' || year == null || month == null || collectionPeriodIds == null || collectionPeriodIds.size() == 0)
        {
            // If this is coming from the form, all things should be filled out. So this should never happen.
            return new List<String>();
        }

        String monthString = SHSCXMLExtractPageController.formatMonth(year, month);

        // Update records to ensure they have an updated percent complete field, and are complaining about any unset fields.
        List<Database.SaveResult> resultList = Database.update([
                SELECT Id
                FROM Collection_Period__c
                WHERE Collection_Period__c = :monthString
                AND Case__r.Program__c = :programId
                AND Id IN :collectionPeriodIds
        ], false);

        // Return the record ids that failed to update.
        List<String> successList = new List<String>();
        for(Database.SaveResult result : resultList)
        {
            if(!result.isSuccess()) { successList.add(result.getId()); }
        }

        return successList;
    }

    // Class to allow easy work-in with LWC picklist key-value requirements.
    public class PicklistOption
    {
        @AuraEnabled public String label = '';
        @AuraEnabled public String value = '';

        public PicklistOption()
        {

        }

        public PicklistOption(String label, String value)
        {
            this();
            this.label = label;
            this.value = value;
        }
    }
}
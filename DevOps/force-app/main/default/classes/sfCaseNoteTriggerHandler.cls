public class sfCaseNoteTriggerHandler extends TriggerHandler
{
    private static Map<Id, Case_Note__c> oldMap { get { return (Map<Id, Case_Note__c>) Trigger.oldMap;} }
    private static Map<Id, Case_Note__c> newMap { get { return (Map<Id, Case_Note__c>) Trigger.newMap;} }
    private static List<Case_Note__c> oldList { get { return (List<Case_Note__c>) Trigger.old;} }
    private static List<Case_Note__c> newList { get { return (List<Case_Note__c>) Trigger.new;} }

    public static List<Case_Note_Audit_Log__c> auditLogsToInsert = new List<Case_Note_Audit_Log__c>();
    public static Set<Id> sessionIdsToUpdateTimes = new Set<Id>();

    public override void beforeInsert()
    {
        BusinessHours bh = [SELECT Id FROM BusinessHours WHERE IsDefault = true];
        BusinessHours bh2 = [SELECT Id FROM BusinessHours WHERE Name = 'Weekend Business Hours'];
        for(Case_Note__c n : newList)
        {
            n = setFields(n);
            
            if(n.Case__r.Program__r.Business_Hours__c == '7 Day'){
                n = setAutoLock(n, bh2);
            } else {
                n = setAutoLock(n, bh);
            }
            //must be last thing before end of before insert/update
            n = checkLockCaseNote(n);
        } 
    }
    
    public override void afterInsert()
    {
        for(Case_Note__c n : newList)
        {
            generateAuditLogEntry(n);
            if (n.session__c != null) { sessionIdsToUpdateTimes.add(n.Session__c); }
        }        
    }
    
    public override void beforeUpdate()
    {
        BusinessHours bh = [SELECT Id FROM BusinessHours WHERE IsDefault = true];
        BusinessHours bh2 = [SELECT Id FROM BusinessHours WHERE Name = 'Weekend Business Hours'];
        for(Case_Note__c n : newList)
        {
            n = setFields(n);
            
            if(n.Case__r.Program__r.Business_Hours__c == '7 Day'){
                n = setAutoLock(n, bh2);
            } else {
                n = setAutoLock(n, bh);
            }
            //must be last thing before end of before insert/update
            n = checkLockCaseNote(n);
        } 
    }

    public override void afterUpdate()
    {
        for(Case_Note__c n : newList)
        {
            generateAuditLogEntry(n);
            if (n.session__c != null && (n.Indirect_Time_Hours__c != oldmap.get(n.Id).Indirect_Time_Hours__c || n.Travel_Time_Hours__c != oldmap.get(n.Id).Travel_Time_Hours__c)) { sessionIdsToUpdateTimes.add(n.Session__c); }
            if (oldmap.get(n.Id).Session__c != null && oldmap.get(n.Id).Session__c != n.Session__c) { sessionIdsToUpdateTimes.add(oldmap.get(n.Id).Session__c); }
            if (n.session__c != null && oldmap.get(n.Id).Session__c == null) { sessionIdsToUpdateTimes.add(n.Session__c); }
        }
    }
    
    public override void afterDelete()
    {
        for(Case_Note__c n : oldList)
        {
            if (n.session__c != null) { sessionIdsToUpdateTimes.add(n.Session__c); }
        }
    }

    //######## Private Methods #########
    
    @testVisible
    private static Case_Note__c setFields(Case_Note__c cn)
    {
        //CIMS unique Check
        cn.CIMS_Unique_Check__c = null;
        if(cn.CIMS_Cluster_Id__c != null && cn.CIMS_Note_Id__c != null){cn.CIMS_Unique_Check__c = cn.CIMS_Cluster_Id__c + '_' + cn.CIMS_Note_Id__c;}   
        
        return cn;
    }
    
    @TestVisible
    private static void generateAuditLogEntry(Case_Note__c n)
    {
        Case_Note_Audit_Log__c l = new Case_Note_Audit_Log__c();
        
        l.Case_Note__c = n.Id;
        l.Auto_Lock_Date_Time__c = n.Auto_Lock_Date_Time__c;
        l.Hours_Spent_With_Client__c = n.Hours_Spent_With_Client__c;
        l.Indirect_Hours__c = n.Indirect_Hours__c;
        l.Indirect_Minutes__c = n.Indirect_Minutes__c;
        l.Minutes_Spent_With_Client__c = n.Minutes_Spent_With_Client__c;
        l.Notes__c = n.Notes__c;
        l.Outbound_Referral__c = n.Outbound_Referral__c;
        l.Session__c = n.Session__c;
        l.Session_Participant__c = n.Session_Participant__c;
        l.Status__c = n.Status__c;
        l.Travel_Hours__c = n.Travel_Hours__c;
        l.Travel_Minutes__c= n.Travel_Minutes__c;
        
        auditLogsToInsert.add(l);
    }
    

    @TestVisible
    private static Case_Note__c setAutoLock(Case_Note__c n, BusinessHours bh)
    {
        DateTime lockFromDateTime = System.now();
        if(n.CreatedDate != null){lockFromDateTime = n.CreatedDate;}
    
        if(n.Auto_Lock_Date_Time__c == null && n.Status__c == 'Lock 8 Hours After Creation'){n.Auto_Lock_Date_Time__c = BusinessHours.add(bh.Id, System.now(), (8 * 60 * 60 * 1000));}
        
        if(n.Auto_Lock_Date_Time__c == null && n.Status__c == 'Lock 16 Hours After Creation'){n.Auto_Lock_Date_Time__c = BusinessHours.add(bh.Id, System.now(), (16 * 60 * 60 * 1000));}
                
        return n;
    }
    
    
    @TestVisible
    private static Case_Note__c checkLockCaseNote(Case_Note__c n)
    {
        if(n.Status__c == 'Lock Now'){n.Status__c = 'Locked';}        
        
        return n;
    }
    
    //######## Finally #########
    public override void andFinally()
    {//do stuff after everything else..

        if(auditLogsToInsert.size() > 0){insert auditLogsToInsert; auditLogsToInsert = new List<Case_Note_Audit_Log__c>();}
        if(sessionIdsToUpdateTimes.size() > 0) { sfHelpers.caseNoteTimeRollup(sessionIdsToUpdateTimes); sessionIdsToUpdateTimes.clear(); }
        
    }
}
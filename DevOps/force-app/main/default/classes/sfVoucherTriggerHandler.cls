public class sfVoucherTriggerHandler extends TriggerHandler
{
    private static Map<Id, Voucher__c> oldMap { get { return (Map<Id, Voucher__c>) Trigger.oldMap;} }
    //private static Map<Id, Voucher__c> newMap { get { return (Map<Id, Voucher__c>) Trigger.newMap;} }
    private static List<Voucher__c> oldList { get { return (List<Voucher__c>) Trigger.old;} }
    private static List<Voucher__c> newList { get { return (List<Voucher__c>) Trigger.new;} }
    
    private static List<Voucher_History_Log__c> voucherLogsToInsert = new List<Voucher_History_Log__c>();
    private static Map<Id, Voucher__c> vouchersToSetShares = new Map<Id, Voucher__c>();
    private static Map<Id, Voucher__c> vouchersToUpdate = new Map<Id, Voucher__c>();

    private static Map<Id, Set<Id>> assignedVoucherMap = new Map<Id, Set<Id>>();
    private static Map<Id, Set<Id>> recalledVoucherMap = new Map<Id, Set<Id>>();
    private static Map<Id, Set<Id>> returnedVoucherMap = new Map<Id, Set<Id>>();
    private static Map<Id, Set<Id>> misplacedVoucherMap = new Map<Id, Set<Id>>();
    
    Map<ID,Schema.RecordTypeInfo> rt_Map = Voucher__c.sObjectType.getDescribe().getRecordTypeInfosById();

    public static Boolean runningInASandbox {
        get {
            if (runningInASandbox == null) {
                System.Domain domain = System.DomainParser.parse(URL.getOrgDomainUrl());
                runningInASandbox = domain.getSandboxName()==null?false:true;
            }
            return runningInASandbox;
        }
        set;
    } 

    public static Map<Id, User> userMap {get
    {
        if(userMap == null)
        { 
            userMap = new Map<Id,User>([SELECT Id, Name, Email, Profile.Name FROM user WHERE isActive = true]); 
        }
        return userMap;
        
    } set;}

    public static Map<Id, User> financeUsers {get
    {
        if (financeUsers == null)
        { 
            financeUsers = new Map<Id,User>([SELECT Id, Name, Email, Profile.Name FROM user WHERE Profile.Name = 'Finance' AND isActive = true]); 
        }
        return financeUsers;
    } set;}

    public static Map<String, List<Id>> programMemberMap {get
    {
        if(programMemberMap == null)
        {
            programMemberMap = new Map<String, List<Id>>();

            for (GroupMember gm : [SELECT group.name, userorgroupid FROM groupmember WHERE group.Type = 'Regular'])
            {
                List<Id> memberIds = programMemberMap.get(gm.Group.Name);
                if (memberIds == null) { memberIds = new List<Id>(); }
                memberIds.add(gm.userOrGroupId);
                programMemberMap.put(gm.Group.Name, memberIds);
            }
        } 
        return programMemberMap;
    
    } set;}

    public override void beforeInsert()
    {
        list<String> validInsertProfiles = new List<String>{'Finance', 'System Administrator'};
        for (Voucher__c v : newList)
        {
            if (!validInsertProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                system.debug(userMap.get(userinfo.getUserId()).Profile.Name);
                v.addError('Only Finance users or System Administrators can create voucher records.');
                continue;
            }

            // if no serial specified, use auto number
            if (string.isblank(v.Serial__c)) { v.Serial__c = v.Name; }

            // set currently allocated user
            v = setCurrentlyAllocatedTo(v);

            // check if user belongs to program
            List<Id> memberIds = programMemberMap.get(v.Program_Name__c);
            List<Id> coimemberIds = programMemberMap.get(v.Program_Name__c + ' - COI');
            if(coimemberIds != null)
            {
            	memberIds.addAll(coimemberIds);
            }
            
            // skips check if Voucher is of recordtype CFY Voucher
            if (!rt_map.get(v.RecordTypeID).getName().containsIgnoreCase('CFY Voucher'))
            {
                if (v.Currently_Allocated_To__c != null && v.Currently_Allocated_To__c != v.OwnerId && memberIds != null && !memberIds.contains(v.Currently_Allocated_To__c))
                {// throw error if they don't belong to program
                    v.addError('Can not assign voucher to a user that does not belong to the voucher\'s program.');
                    continue;
                }
            }

            // if its been created an allocated, set status to Pending Acceptance TODO send notification to user
            if (v.Currently_Allocated_To__c != null && (v.Program_Manager__c != null || v.Team_Leader__c != null || v.Worker__c != null)) { v.Status__c = 'Pending Acceptance'; v.Date_Assigned__c = date.today(); }
            else { v.Status__c = 'New'; }
        }
    }
    
    public override void afterInsert()
    {
        for (Voucher__c v : newList)
        {
            voucherLogsToInsert.add(createLog(v.Id, 'Created Voucher', userInfo.getName(), null,null));

            if (v.Currently_Allocated_To__c != null) 
            { 
                voucherLogsToInsert.add(createLog(v.Id, 'Assigned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                vouchersToSetShares.put(v.Id, v);
                addToMap(AssignedVoucherMap, v.Currently_Allocated_To__c, v.Id);
            }
        }
        
    }
    
    public override void beforeUpdate()
    {
        list<String> validModifyProfiles = new List<String>{'Finance', 'System Administrator'};

        for (Voucher__c v : newList)
        {
            if (string.isblank(v.Serial__c)) { v.Serial__c = v.Name; }

            if (oldMap.get(v.Id).Brokerage__c != null && v.Brokerage__c == null) 
            {// voucher was unassigned from brokerage record, change status back to assigned
                v.Status__c = 'Assigned';
            }

            // can't assign directly to a worker
            if ( v.Program_Manager__c == null && v.Team_Leader__c == null && v.Worker__c != null && !validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                v.addError('Cannot assign directly to a worker. Please assign using the Program manager / Team Leader fields.');
                continue;
            }

            // can only modify vouchers that are not consumed
            if (oldMap.get(v.Id).Status__c == 'Consumed' && !validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                v.addError('Can not modify a voucher that is already consumed.');
                continue;
            }

            // can only modify vouchers that are not consumed
            if (oldMap.get(v.Id).Status__c == 'Misplaced' && !validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                v.addError('Can not modify a voucher that is misplaced.');
                continue;
            }

            // check if program_expensed has been changed
            if (v.Program_Expensed__c == null && oldmap.get(v.Id).Program_Expensed__c != null && !validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                v.addError('Can not unassign voucher from program.');
                continue;
            }

            v = setCurrentlyAllocatedTo(v);

            // check if user belongs to program
            List<Id> memberIds = programMemberMap.get(v.Program_Name__c);
            List<Id> coimemberIds = programMemberMap.get(v.Program_Name__c + ' - COI');
            if(coimemberIds != null)
            {
            	memberIds.addAll(coimemberIds);
            }
                
                // skips check if Voucher is of recordtype CFY Voucher
                if (!rt_map.get(v.RecordTypeID).getName().containsIgnoreCase('CFY Voucher'))
                {
                    if (v.Currently_Allocated_To__c != null && v.Currently_Allocated_To__c != v.OwnerId && !memberIds.contains(v.Currently_Allocated_To__c) && !validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
                    {// throw error if they don't belong to program
                        v.addError('Can not assign voucher to a user that does not belong to the voucher\'s program.');
                        continue;
                    }
                }

            // if (v.Currently_Allocated_To__c != null && v.Program_Manager__c == null && v.Team_Leader__c == null && v.Worker__c == null)
            // {
            //     v.addError('Please assign using the Program manager / Team Leader fields.  Currently Allocated To field is calculated on save.');
            //     continue;
            // }

            // worker can not change assignment of project manager / team leader
            if (userinfo.getUserId() == v.Worker__c &&
                (v.Program_Manager__c != oldmap.get(v.Id).Program_Manager__c || v.Team_Leader__c != oldMap.get(v.Id).Team_Leader__c))
            {
                v.addError('Worker can not assign change assignment of project manager or team leader.');
                continue;
            }

            // team leader can not change assignment of project manager
            if (userinfo.getUserId() == oldmap.get(v.Id).Team_Leader__c && userinfo.getUserId() == v.Team_Leader__c && v.Program_Manager__c != oldmap.get(v.Id).Program_Manager__c)
            {
                v.addError('Team Leader can not change assignment of project manager.');
                continue;
            }

            // if currently_allocated_to__c has changed, set status to 'Pending Acceptance'
            if (v.Currently_Allocated_To__c != oldMap.get(v.Id).Currently_Allocated_To__c) 
            { 
                v.Status__c = 'Pending Acceptance'; 
                v.Date_Assigned__c = date.today();
            }

            // if currently_allocated_to__c has changed, but is current user, set status to 'Assigned'
            if (v.Currently_Allocated_To__c == userinfo.getUserId() && v.Currently_Allocated_To__c != oldMap.get(v.Id).Currently_Allocated_To__c) { v.Status__c = 'Assigned'; }

            // if brokerage is set, change status to consumed
            if (v.Brokerage__c != null && oldMap.get(v.Id).Brokerage__c == null) 
            { 
                if (v.Status__c != 'Assigned') { v.addError('Can only use vouchers that are assigned to you. Not misplaced, expired or pending acceptance vouchers.'); }
                v.Status__c = 'Consumed'; 
                
            }

            // if user is finance and assigned to themselves, set status to new
            if (userMap.get(userinfo.getUserId()).Profile.Name == 'Finance' && v.Currently_Allocated_To__c == userinfo.getUserId() && v.Program_Manager__c == null && v.Team_Leader__c == null && v.Worker__c == null) { v.Status__c = 'New'; v.Date_Assigned__c = null; }

        }
    }

    public override void afterUpdate()
    {   
        for (Voucher__c v : newList)
        {
            if (oldmap.get(v.Id).Currently_Allocated_To__c == v.Currently_Allocated_To__c)
            {// user has changed some other field

                // compare current vs old values and log differences
                sfDataMatching.DataMatchResult dmr = sfDataMatching.dataMatches(v, oldmap.get(v.Id));
                if (dmr.matches == false)
                {
                    String details = dmr.getFieldsAsPrettyText();
                    
                    if (v.Status__c == 'Assigned' && oldmap.get(v.Id).Status__c == 'Pending Acceptance' && dmr.fields.size() == 1)
                    {
                        voucherLogsToInsert.add(createLog(v.Id, 'Accepted Voucher', userInfo.getName(), null, details));
                    }
                    voucherLogsToInsert.add(createLog(v.Id, 'Modified Voucher', userInfo.getName(), null, details));
                }
            }
            else if (userinfo.getUserId() == oldmap.get(v.Id).Worker__c && userinfo.getUserId() != v.Worker__c)
            {// worker returning voucher to person who assigned it to them, can only remove themselves from the worker__c
                voucherLogsToInsert.add(createLog(v.Id, 'Returned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                // notify current allocated user that voucher has been returned
                addToMap(ReturnedVoucherMap, v.Currently_Allocated_To__c, v.Id);
            }
            else if (userinfo.getUserId() == oldmap.get(v.Id).Team_Leader__c || userinfo.getUserId() == v.Team_Leader__c)
            {// team leader making changes to allocation
                if (v.Worker__c == null && oldmap.get(v.Id).Worker__c != null && userinfo.getUserId() == v.Currently_Allocated_To__c)
                {// team leader recalling voucher from worker
                    voucherLogsToInsert.add(createLog(v.Id, 'Recalled Voucher', userInfo.getName(), userMap.get(oldmap.get(v.Id).Worker__c).Name, null));
                    // notify previous currently_allocated_to user that voucher has been recalled
                    addToMap(recalledVoucherMap, oldMap.get(v.Id).Currently_Allocated_To__c, v.Id);
                }
                else if (userinfo.getUserId() == oldmap.get(v.Id).Currently_Allocated_To__c && v.Currently_Allocated_To__c == v.Program_Manager__c)
                {// team leader returning voucher to project manager
                    voucherLogsToInsert.add(createLog(v.Id, 'Returned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                    // notify current allocated user that voucher has been returned
                    addToMap(ReturnedVoucherMap, v.Currently_Allocated_To__c, v.Id);
                }
                else if (v.Worker__c != null && oldmap.get(v.Id).Worker__c == null && v.Worker__c == v.Currently_Allocated_To__c)
                {// team leader allocated voucher to worker
                    voucherLogsToInsert.add(createLog(v.Id, 'Assigned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                    // notify current allocated user that voucher has been assigned
                    addToMap(AssignedVoucherMap, v.Currently_Allocated_To__c, v.Id);
                }
            }
            else if (userinfo.getUserId() == v.Program_Manager__c)
            {// program manager changing allocation
                if (v.Currently_Allocated_To__c == userinfo.getUserId() && oldmap.get(v.Id).Currently_Allocated_To__c != userinfo.getUserId())
                {// program manager recalled voucher
                    voucherLogsToInsert.add(createLog(v.Id, 'Recalled Voucher', userInfo.getName(), userMap.get(oldmap.get(v.Id).Currently_Allocated_To__c).Name, null));
                    // notify old allocated user that voucher has been recalled
                    addToMap(RecalledVoucherMap, oldMap.get(v.Id).Currently_Allocated_To__c, v.Id);
                }
                else 
                {
                    voucherLogsToInsert.add(createLog(v.Id, 'Assigned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                    // notify old allocated user that voucher has been recalled
                    addToMap(AssignedVoucherMap, v.Currently_Allocated_To__c, v.Id);
                }
            }
            else if (userinfo.getUserId() == v.OwnerId || userMap.get(userinfo.getUserId()).Profile.Name == 'Finance')
            {// Finance User
                if (userinfo.getUserId() == v.Currently_Allocated_To__c && userinfo.getUserId() != oldmap.get(v.Id).Currently_Allocated_To__c)
                {// Finance user recalling voucher
                    voucherLogsToInsert.add(createLog(v.Id, 'Recalled Voucher', userInfo.getName(), userMap.get(oldmap.get(v.Id).Currently_Allocated_To__c).Name, null));
                    // notify previous currently_allocated_to user that voucher has been recalled
                    addToMap(recalledVoucherMap, oldMap.get(v.Id).Currently_Allocated_To__c, v.Id);
                }
                else 
                {// Finance user assigning voucher
                    voucherLogsToInsert.add(createLog(v.Id, 'Assigned Voucher', userInfo.getName(), userMap.get(v.Currently_Allocated_To__c).Name, null));
                    addToMap(AssignedVoucherMap, v.Currently_Allocated_To__c, v.Id);    
                }
            }

            if (v.Currently_Allocated_To__c != oldMap.get(v.Id).Currently_Allocated_To__c)
            {// catch all for sharing rule changes
                vouchersToSetShares.put(v.Id, v);
            }

            // if voucher is marked as misplaced, notify team leader / manager
            if (v.Status__c == 'Misplaced' )
            {
                id immediateManager = v.OwnerId;
                if (userInfo.getUserId() == v.Worker__c && v.Team_Leader__c != null) { immediateManager = v.Team_Leader__c; }
                else if (userInfo.getUserId() == v.Worker__c && v.Program_Manager__c != null) { immediateManager = v.Program_Manager__c; }
                else if (userInfo.getUserId() == v.Team_Leader__c && v.Program_Manager__c != null) {immediateManager = v.Program_Manager__c; }

                addToMap(MisplacedVoucherMap, immediateManager, v.Id);
            }
            
        }
    }

    public override void beforeDelete()
    {
        list<String> validModifyProfiles = new List<String>{'Finance', 'System Administrator'};

        for (Voucher__c v : oldList)
        {
            if (!validModifyProfiles.contains(userMap.get(userinfo.getUserId()).Profile.Name))
            {
                v.addError('Can not delete vouchers.');
            }
        }
    }

    
    public static voucher__c setCurrentlyAllocatedTo(Voucher__c v)
    {// set currently allocated to the lowest level user

        if (financeUsers.containsKey(userinfo.getUserId())) { v.OwnerId = userinfo.getUserId(); } // set owner to finance user
        
        v.Currently_Allocated_To__c = v.OwnerId;

        if (v.Program_Manager__c != null) 
        { 
            v.Currently_Allocated_To__c = v.Program_Manager__c; 
        }
        
        if (v.Team_Leader__c != null) 
        { 
            v.Currently_Allocated_To__c = v.Team_Leader__c; 
        }
        
        if (v.Worker__c != null) 
        { 
            v.Currently_Allocated_To__c = v.Worker__c; 
        } 

        return v;
    }

    public static Voucher_History_Log__c createLog(Id voucherId, String action, String User, String toUser, String details)
    {
        Voucher_History_Log__c l = new Voucher_History_Log__c();
        l.Voucher__c = voucherId;
        l.User__c = user;
        l.Action__c = action;
        l.To_User__c = toUser;
        l.Details__c = details;

        return l;
    }

    public static void createSharingRules(Map<Id, Voucher__c> voucherMap)
    {
        // list of new shares to be created
        List<Voucher__Share> newVoucherShares = new List<Voucher__Share>();

        // get existing voucher shares
        List<Voucher__Share> oldVoucherShares = [SELECT Id, parentid, UserOrGroupId FROM Voucher__Share WHERE ParentId IN :voucherMap.keySet() AND RowCause = 'Manual'];
        
        // get set of program names for all vouchers
        Set<String> programNames = new Set<String>();
        for (Voucher__c v : voucherMap.values()) { programNames.add(v.Program_Name__c); }

        Map<String, Set<Id>> userIdMap = new Map<String, Set<Id>>();

        // create map of group names / user Ids
        for (groupmember gm : [
            SELECT id, group.name, UserOrGroupId, UserOrGroup.Name, UserOrGroup.Profile.Name 
            FROM groupmember 
            WHERE group.Name IN :programNames 
            AND UserOrGroup.Name != null 
            AND (UserOrGroup.Profile.Name = 'Team Leader' OR UserOrGroup.Profile.Name = 'Program Manager')
            AND UserOrGroup.isActive = true
        ])
        {
            Set<Id> userIds = new Set<Id>();
            if (userIdMap.containsKey(gm.group.name)) { userIds = userIdMap.get(gm.group.name); }
            userIds.add(gm.UserOrGroupId);
            userIdMap.put(gm.group.name, userIds);
        }


        for (Voucher__c v : voucherMap.values())
        {// create sharing rules for each voucher
            system.debug('setting shares for voucher: ' + v);
            if (userIdMap.containsKey(v.Program_Name__c) && (v.Program_Manager__c != null || v.Team_Leader__c != null))
            {// if voucher has been allocated
                system.debug('setting program manager / team leader share');
                for (Id userId : userIdMap.get(v.Program_Name__c))
                {// share with all team leaders / program managers in the group
                    if (userId == v.OwnerId) { continue; } // don't set share for owner
                    system.debug('user share: ' + userId + ' | ' + userMap.get(userId).Name);
                    Voucher__Share vs = new Voucher__Share();
                    vs.ParentId = v.Id;
                    vs.AccessLevel = 'Edit';
                    vs.UserOrGroupId = userId;
                    vs.RowCause = Schema.Voucher__Share.RowCause.Manual;
                    newVoucherShares.add(vs);
                }
            }
            if (v.Worker__c != null && userMap.containsKey(v.Worker__c))
            {
                system.debug('setting worker share: ' + v.Worker__c);
                Voucher__Share vs = new Voucher__Share();
                vs.ParentId = v.Id;
                vs.AccessLevel = 'Edit';
                vs.UserOrGroupId = v.Worker__c;
                vs.RowCause = Schema.Voucher__Share.RowCause.Manual;
                newVoucherShares.add(vs);
            }

            for (user u : financeUsers.values())
            {
                if (u.Id == v.OwnerId) { continue; } // don't set share for owner
                system.debug('setting finance user share: ' + u.Id);
                Voucher__Share vs = new Voucher__Share();
                vs.ParentId = v.Id;
                vs.AccessLevel = 'Edit';
                vs.UserOrGroupId = u.Id;
                vs.RowCause = Schema.Voucher__Share.RowCause.Manual;
                newVoucherShares.add(vs);
            }
        }

        // delete old shares
        system.debug('oldVoucherShares: ' + oldVoucherShares);
        if (oldVoucherShares.size() > 0) { delete oldVoucherShares; }
        

        // create new shares
        system.debug('newVoucherShares: ' + newVoucherShares);
        if (newVoucherShares.size() > 0) { insert newVoucherShares; }
    }

    public void addToMap(Map<Id, Set<Id>> mapToAddTo, Id userId, Id voucherId)
    {// add to map by reference
        if (mapToAddTo.containsKey(UserId))
        {
            mapToAddTo.get(UserId).add(VoucherId);
        }
        else 
        {
            mapToAddTo.put(UserId, new Set<Id>{voucherId});
        }
    }

    
    public static void sendEmailNotifications(String notificationType, Map<Id, Set<Id>> userVoucherMap)
    {
        Voucher_Settings__c voucherSettings  = Voucher_Settings__c.getOrgDefaults();

        // list of emails to send
        List<Messaging.SingleEmailMessage> emailMessages = new List<Messaging.SingleEmailMessage>();

        set<Id> voucherIds = new Set<Id>();

        for (Set<Id> idSet : userVoucherMap.values())
        {// get set of all Ids
            voucherIds.addAll(idSet);
        }
        // get voucher info for all vouchers
        Map<Id, Voucher__c> voucherMap = new Map<Id, Voucher__c>([
            SELECT Id, Name, Serial_No__c, Voucher_Type__c, Value__c, Program_Expensed__c, Program_Expensed__r.Name, OwnerId
            FROM Voucher__c
            WHERE Id IN :voucherIds
        ]);

        for (Id userId : userVoucherMap.keySet())
        {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

            // set to address
            List<String> toAddresses = new List<String>{userMap.get(userId).Email};

            Id ownerId;

            if (voucherSettings.Debug_Notifications__c == true && voucherSettings.Debug_Email_Address__c != null) { toAddresses = new List<String>{voucherSettings.Debug_Email_Address__c}; }
            
            String body = '';
            String baseUrl = URL.getSalesforceBaseUrl().toExternalForm();

            body += 'Dear ' + userMap.get(UserId).Name + ',<br/><br/>';
            body += 'The following vouchers have been ' + notificationType + '.<br/><br/>';

            body += '<ul>';
            for (Id vId : userVoucherMap.get(userId))
            {
                body += '<li>'; 
                body += '<b>Serial #:</b> ' + voucherMap.get(vId).Serial_No__c + ' | <b>Type:</b> ' + voucherMap.get(vId).voucher_Type__c + ' | <b>$ Value:</b> ' + voucherMap.get(vId).Value__c + ' | <b>Program Name:</b> ' + voucherMap.get(vId).Program_Expensed__r.Name;
                body += '</li>';
                ownerId = voucherMap.get(vId).ownerId;
            }

            if (notificationType == 'Misplaced')
            {
                toAddresses.add('accounts@socialfutures.org.au');
            }

            body += '</ul><br/><br/>';

            body += 'Click <a href="' + baseUrl + '/lightning/n/Vouchers">here</a> to view a list of vouchers assigned to you.<br/>';

            email.setToAddresses(toAddresses);
            email.setSubject(NotificationType + ' voucher notification');
            email.setHtmlBody(body);
            email.setUseSignature(true);

            emailMessages.add(email);
        }

        if (emailMessages.size() > 0 && !test.isRunningTest() && runningInASandbox == false)
        {// if not running test or in a sandbox, send email
            Messaging.sendEmail(emailMessages);
        }
        else 
        {// debug them
            if (voucherSettings.Debug_Notifications__c == true && voucherSettings.Debug_Email_Address__c != null) { system.debug('sending debug notifications'); Messaging.sendEmail(emailMessages); }
            for (Messaging.SingleEmailMessage e : emailMessages)
            {
                system.debug('email: ' + e);
            }
        }
    }

    
    //######## Finally #########
    public override void andFinally()
    {//do stuff after everything else..
        if (voucherLogsToInsert.size() > 0)
        {
            insert voucherLogsToInsert;
            voucherLogsToInsert.clear();
        }

        // Send email notifications
        if (recalledVoucherMap.size() > 0) { sendEmailNotifications('Recalled', recalledVoucherMap); }
        if (returnedVoucherMap.size() > 0) { sendEmailNotifications('Returned', returnedVoucherMap); }
        if (assignedVoucherMap.size() > 0) { sendEmailNotifications('Assigned', assignedVoucherMap); }
        if (misplacedVoucherMap.size() > 0) { sendEmailNotifications('Misplaced', misplacedVoucherMap); }

        // create sharing rules
        if (vouchersToSetShares.size() > 0)
        {
            createSharingRules(vouchersToSetShares);
            vouchersToSetShares.clear();
        }
    }
}
/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DexApiSoFu 
{
    public static Dex_Settings__c DexSettings {get {if(DexSettings == null) {DexSettings = Dex_Settings__c.getInstance();} return DexSettings;} set;}

    //------ Client Methods ---------------------------------
    public static void upsertClient(String contactDexId, String theCaseDexId)
    {//designed to be run on a single job
        Contact c = getContact(contactDexId);

        if (c == null)
        {
            return;
        }

        // duplicate check, if Has_Validated_For_Duplicate_Client__c is not checked:
        if (c.Has_Validated_For_Duplicate_Client__c == false)
        {// do duplicate check
            c = ValidateForDuplicateClient(contactDexId, c);
        }
        else 
        {
            c.Dex_Potential_Duplicates__c = null;    
        }

        //DexApi.ApiResponse r = DexApi.GetClient(contactId);
        DexApi.ApiResponse r = DexApi.GetClient(contactDexId);
        Dex_Request_Log__c drl = r.dexRequestLog;
        drl.Call_Method__c = 'getClient';
        drl.Object_Type__c = 'Contact';
        drl.Object_Id__c = String.valueOf(c.Id);
        drl.Contact__c = c.Id;

        DexModel.GetClientResponse getClient = null;
        if (drl.Response_Status__c  == 'ERROR')
        {// handle error
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += 'See Dex Request Log for details.';
        }   
        else if (drl.Response_Code__c == 200)
        {
            getClient = r.Envelope.Body.GetClientResponse;
            drl.Transaction_Status__c = getClient.TransactionStatus.TransactionStatusCode;
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = 'Success';
            c.Dex_Sync_Message__c = '';
        }
        
        if(getClient != null && getClient.Client.size() > 0 && getClient.TransactionStatus.TransactionStatusCode == 'Success')
        {// we've already created this client, update it
            // check address, if blank in hende, use dex address
            dexModel.client dexClient = getClient.client[0];
            
            if (c.OtherCity == null || c.otherPostalCode == null || c.otherState == null)
            {
                c.OtherStreet = dexClient.ResidentialAddress.AddressLine1;
                c.OtherCity = dexClient.ResidentialAddress.Suburb;
                c.OtherPostalCode = dexClient.ResidentialAddress.Postcode;
                c.OtherState = dexClient.ResidentialAddress.State;
            }
            c = updateClient(c, theCaseDexId);
        }
        else if (getClient != null && getClient.TransactionStatus.TransactionStatusCode == 'Failed')
        {// no client found, create it
            if (c.OtherCity == null || c.OtherPostalCode == null || c.OtherState == null)
            {// if no address, get from household account
                c.OtherStreet = c.Account.ShippingStreet;
                c.OtherCity = c.Account.ShippingCity;
                c.OtherPostalCode = c.Account.ShippingPostalCode;
                c.OtherState = c.Account.ShippingState;
            }
            c = addClient(c, theCaseDexId);
        }

        insert drl;

        try 
        {
            update c;
        }
        catch (DMLException e)
        {// error updating contact record, add error to case dex sync error message
            system.debug('error updating contact: ' + e.getMessage() + ' '+ e.getStackTraceString());
            if (theCaseDexId != null)
            {
                Case ca = [SELECT Id, Dex_Sync_Message__c, Dex_Sync_Status__c FROM Case WHERE (Id = :theCaseDexId OR dex_Id__c = :theCaseDexId) LIMIT 1];
                ca.Dex_Sync_Status__c = 'ERROR';
                ca.Dex_Sync_Message__c += '\n' + 'Error updating Client - ' + contactDexId + ' (see session log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + drl.id + ') - ' + e.getMessage(); 
                update ca; 
            }

            drl.Error_Message__c = e.getMessage() + ' - ' + e.getStackTraceString();
            update drl;
        }
    }
    
    public static Contact updateClient(Contact c, String caseDexId)
    {
        DexModel.ClientRequest clientReq = createClientRequest(c);
        DexModel.UpdateClientRequest updateClientRequest = new DexModel.UpdateClientRequest();
        updateClientRequest.Client = clientReq;

        DexApi.ApiResponse upodateRes = DexApi.UpdateClient(updateClientRequest);
       
        Dex_Request_Log__c update_log = upodateRes.dexRequestLog;
        update_log.Call_Method__c = 'upsertClient - update';
        update_log.Object_Type__c = 'Contact';
        update_log.Object_Id__c = String.valueOf(c.dex_id__c);
        update_log.Contact__c = c.Id;
        insert update_log;

        c.Dex_Last_Sync__c = datetime.now();

        if (update_log.Response_Status__c  == 'ERROR')
        {// handle error
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c = 'See Dex Request Log for details.';

            if (caseDexId != null)
            {
                Case ca = [SELECT Id, Dex_Sync_Message__c, Dex_Child_Sync_Status__c, Dex_Sync_Status__c FROM Case WHERE (Id = :caseDexId OR dex_Id__c = :caseDexId) LIMIT 1];
                ca.Dex_Child_Sync_Status__c = 'Failure';
                ca.Dex_Sync_Message__c += ca.Dex_Sync_Message__c + '\n' + 'Error updating Client - ' + c.Dex_Id__c + ' (see contact log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + update_log.id + ')'; 
                update ca;
            }
            
        }   
        else if (update_log.Response_Code__c == 200)
        {
            DexModel.UpdateClientResponse updatedClient = upodateRes.Envelope.Body.UpdateClientResponse;
            update_log.Transaction_Status__c = updatedClient.TransactionStatus.TransactionStatusCode;
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = update_log.Transaction_Status__c;
            if (getMessages(updatedClient.TransactionStatus.Messages) != null)
            {
                c.Dex_Sync_Message__c = getMessages(updatedClient.TransactionStatus.Messages);
            }
            else 
            {
                c.Dex_Sync_Message__c = '';
            }
            
            update update_log;

            if (update_log.Transaction_Status__c != 'Success' && caseDexId != null)
            {
                Case ca = [SELECT Id, Dex_Sync_Message__c, Dex_Child_Sync_Status__c, Dex_Sync_Status__c FROM Case WHERE (Id = :caseDexId OR dex_Id__c = :caseDexId) LIMIT 1];
                ca.Dex_Child_Sync_Status__c = 'Failure';
                ca.Dex_Sync_Message__c += '\n' + 'Error updating client: ' + c.Dex_Id__c + ' (see contact log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + update_log.id + ')'; 
                update ca;
            }
        }

        return c;
    }

    public static Contact addClient(Contact c, String caseDexId)
    {
        DexModel.ClientRequest clientReq = createClientRequest(c);
        DexModel.AddClientRequest addClientRequest = new DexModel.AddClientRequest();
        addClientRequest.Client = clientReq;
        addClientRequest.hasValidatedForDuplicateClient = c.Has_Validated_For_Duplicate_Client__c;

        DexApi.ApiResponse addRes = DexApi.addClient(addClientRequest);
        
        Dex_Request_Log__c add_log = addRes.dexRequestLog;
        add_log.Call_Method__c = 'upsertClient - add';
        add_log.Object_Type__c = 'Contact';
        add_log.Object_Id__c = String.valueOf(c.dex_id__c);
        add_log.Contact__c = c.Id;
        insert add_log;

        c.Dex_Last_Sync__c = datetime.now();

        if (add_log.Response_Status__c  == 'ERROR')
        {// handle error
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += 'See Dex Request Log for details.' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + add_log.id;
            
            if (caseDexId != null)
            {
                list<Case> caList = [SELECT Id, Dex_Sync_Message__c, Dex_Child_Sync_Status__c FROM Case WHERE (Id = :caseDexId OR dex_Id__c = :caseDexId)];
                if (caList.size() > 0)
                {
                    Case ca = caList[0];
                    ca.Dex_Child_Sync_Status__c = 'Failure';
                    ca.Dex_Sync_Message__c += '\n' + 'Error updating Client - ' + c.Dex_Id__c + ' (see contact log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + add_log.id + ')'; 
                    update ca;
                }
            }
        }   
        else if (add_log.Response_Code__c == 200)
        {
            DexModel.AddClientResponse addedClient = addRes.Envelope.Body.AddClientResponse;
            add_log.Transaction_Status__c = addedClient.TransactionStatus.TransactionStatusCode;
            c.Dex_Last_Sync__c = datetime.now();
            c.Dex_Sync_Status__c = add_log.Transaction_Status__c;
            if (getMessages(addedClient.TransactionStatus.Messages) != null)
            {
                c.Dex_Sync_Message__c = getMessages(addedClient.TransactionStatus.Messages);
            }
            else 
            {
                c.Dex_Sync_Message__c = '';
            }
            
            update add_log;

            if (add_log.Transaction_Status__c != 'Success')
            {
                list<Case> caList = [SELECT Id, Dex_Sync_Message__c, Dex_Child_Sync_Status__c FROM Case WHERE (Id = :caseDexId OR dex_Id__c = :caseDexId)];
                if (caList.size() > 0)
                {
                    Case ca = caList[0];
                    ca.Dex_Child_Sync_Status__c = 'Failure';
                    ca.Dex_Sync_Message__c += '\n' + 'Error creating client: ' + c.Dex_Id__c + ' (see contact log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + add_log.id + ')'; 
                    update ca;
                }
            }
        }

        return c;
    }

    public static Contact ValidateForDuplicateClient(String contactDexId, Contact c)
    {// TODO maybe return list of clients found, or null if none found
        if (c == null)
        {
            c = getContact(contactDexId);
        }
      
        List<Dex_Request_Log__c> requestLogs = new List<Dex_Request_Log__c>();

        DexModel.ValidateForDuplicateClientRequest searchRequest = new DexModel.ValidateForDuplicateClientRequest();

        searchRequest.Criteria.PageIndex = 1;
        searchRequest.Criteria.PageSize = 10;
        searchRequest.Criteria.IsAscending = true;
        searchRequest.Criteria.SortColumn = 'CreatedDate';
        searchRequest.Criteria.GivenName = c.FirstName;
        searchRequest.Criteria.FamilyName = c.LastName;
        if(c.Birthdate != null)
        {
            searchRequest.Criteria.BirthDate = DexApi.getIsoDatetime(c.Birthdate, false);
        }
        searchRequest.Criteria.GenderCode = c.Sex__c;
        searchRequest.Criteria.ClientId = c.Dex_Id__c;

        DexApi.ApiResponse dupResponse = DexApi.ValidateForDuplicateClient(searchRequest);
    
        Dex_Request_Log__c requestLog = dupResponse.dexRequestLog;
        requestLog.Call_Method__c = 'ValidateForDuplicateClient';
        requestLog.Object_Type__c = 'Contact';
        requestLog.Object_Id__c = String.valueOf(c.dex_id__c);
        requestLog.Contact__c = c.Id;

        DexModel.ValidateForDuplicateClientResponse dupRes = null;

        system.debug('dupResponse.Envelope.Body.ValidateForDuplicateClientResponse: ' + dupResponse.Envelope.Body.ValidateForDuplicateClientResponse);

        if (requestLog.Response_Code__c == 200 && requestLog.Response_Status__c == 'OK')
        {
            dupRes = dupResponse.Envelope.Body.ValidateForDuplicateClientResponse;
            requestLog.Transaction_Status__c = dupRes.TransactionStatus.TransactionStatusCode;
        }
        else 
        {
            requestLog.Transaction_Status__c = 'ERROR';
        }

        if (dupRes != null && dupRes.Clients != null && dupRes.clients.Client.size() > 0)
        {// duplicates found, update contact
            String duplicateString = getDuplicateString(dupRes.clients);
            c.Dex_Potential_Duplicates__c = duplicateString;
        }
        else
        {// no duplicates found, update contact validated for duplicates
            c.Dex_Potential_Duplicates__c = null;
            c.Has_Validated_For_Duplicate_Client__c = true;
        }

        return c;
    }

    public static String getDuplicateString(DexModel.ArrayOfClient clients)
    {
        List<DexModel.Client> clientList = clients.Client;
        Integer size = clientList.size();
       
        String s = '';

        s += '<h1 style="color: #4485b8;">Potential Duplicates Found</h1>';
        s += '<p><b>Total potential duplicates found: ' + String.valueOf(size) + '</b></p>'; 
        
        for (DexModel.Client c : clientList)
        {
            s += '<table><tbody>';
            s += '<tr><td><b>Client Id:</b></td><td>' + c.ClientId + '</td></tr>';
            s += '<tr><td><b>SLK:</b></td><td>' + c.SLK + '</td></tr>';
            s += '<tr><td><b>Given Name:</b></td><td>' + c.GivenName + '</td></tr>';
            s += '<tr><td><b>Family Name:</b></td><td>' + c.FamilyName + '</td></tr>';
            s += '<tr><td><b>Birth Date:</b></td><td>' + c.BirthDate.left(10) + '</td></tr>'; 
            s += '<tr><td><b>Gender:</b></td><td>' + c.GenderCode + '</td></tr>'; 
            s += '<tr><td><b>Address:</b></td><td>' + c.ResidentialAddress.AddressLine1 + ' ' 
                + c.ResidentialAddress.Suburb + ', ' 
                + c.ResidentialAddress.State + ' ' 
                + c.ResidentialAddress.Postcode + '</td></tr>'; 
            
            s += '<table><tbody>';
            s += '<hr />';
        }

        return s;
    }

    public static void deleteClientRequest(String clientDexId)
    {
        DexApi.ApiResponse apiRes = DexApi.DeleteClient(clientDexId);
        DexModel.DeleteClientResponse clientRes = apiRes.Envelope.Body.DeleteClientResponse;
        Dex_Request_Log__c requestLog = apiRes.dexRequestLog;
        requestLog.Call_Method__c = 'deleteClientRequest';
        requestLog.Object_Type__c = 'Contact';
        requestLog.Object_Id__c = String.valueOf(clientDexId);
        requestLog.Transaction_Status__c =  clientRes.TransactionStatus.TransactionStatusCode;
        
        insert requestLog;
    }

    public static DexModel.ClientRequest createClientRequest(Contact c)
    {
        DexModel.ClientRequest clientReq = new DexModel.ClientRequest();

        //clientReq.clientId = c.Id;
        clientReq.clientId = c.Dex_Id__c;
        clientReq.SLK = c.SLK__c;
        clientReq.ConsentToProvideDetails = c.Data_Exchange_Consent__c;
        clientReq.ConsentedForFutureContacts = c.RBA_Survey_Consent__c;
        if (c.Data_Exchange_Consent__c)
        {// omit name if false
            clientReq.GivenName = c.FirstName;
            clientReq.FamilyName = c.Lastname;
        }
        clientReq.IsUsingPsuedonym = c.Lastname_is_Pseudonym__c;
        clientReq.IsBirthDateAnEstimate = c.Birthdate_Is_Estimate__c;
        if (c.Birthdate != null)
        {
            clientReq.BirthDate = DexApi.getIsoDatetime(c.Birthdate, c.Birthdate_Is_Estimate__c);
        }
        clientReq.GenderCode = c.Sex__c;
        // using OtherAddress TODO check if this is correct address to use
        if (c.OtherCity == null || c.OtherState == null || c.OtherPostalCode == null)
        {
            clientReq.ResidentialAddress.AddressLine1 = c.MailingStreet;
            clientReq.ResidentialAddress.Suburb = c.MailingCity;
            clientReq.ResidentialAddress.State = c.MailingState;
            clientReq.ResidentialAddress.Postcode = c.MailingPostalCode;
        }
        else 
        {
            clientReq.ResidentialAddress.AddressLine1 = c.OtherStreet;
            clientReq.ResidentialAddress.Suburb = c.OtherCity;
            clientReq.ResidentialAddress.State = c.OtherState;
            clientReq.ResidentialAddress.Postcode = c.OtherPostalCode;
        }
        
        clientReq.CountryOfBirthCode = c.Country_Of_Birth__c;
        clientReq.LanguageSpokenAtHomeCode = c.Main_Language_Spoken_At_Home__c;
        clientReq.AboriginalOrTorresStraitIslanderOriginCode = c.Indigenous_Status__c;
        clientReq.HasDisabilities = c.Has_Disabilities__c;
        clientReq.HomelessIndicatorCode = c.Homelessness_Indicator__c;
        clientReq.HouseholdCompositionCode = c.Household_Composition__c;
        clientReq.MainSourceOfIncomeCode = c.Main_Income_Source__c;
        clientReq.IncomeFrequencyCode = c.Income_Frequency__c;
        if (c.Income_Amount__c != null)
        {
            clientReq.IncomeAmount = integer.valueOf(c.Income_Amount__c);
        }
        clientReq.FirstArrivalMonth = c.Month_of_Arrival_in_Australia__c;
        if (c.Year_of_Arrival_in_Australia__c != null)
        {
            clientReq.FirstArrivalYear = integer.valueOf(c.Year_of_Arrival_in_Australia__c);
        }
        clientReq.MigrationVisaCategoryCode = c.Visa_Category__c;
        clientReq.AncestryCode = c.Ancestry__c;
        clientReq.AccommodationTypeCode = c.Accommodation_Setting__c;
        clientReq.DVACardStatusCode = c.DVA_Card_Status__c;
        clientReq.HasCarer = c.Has_Carer__c;
        clientReq.EducationLevelCode = c.Highest_Level_of_Education__c;
        clientReq.EmploymentStatusCode = c.Employment_Status__c;
        clientReq.IsClientACarer = c.Is_Client_A_Carer__c;
        clientReq.NDISEligibilityCode = c.NDIS_Eligibility__c;

        if (c.Has_Disabilities__c == true && !String.isEmpty(c.Disabilities__c))
        {
            DexModel.ArrayOfStringDisabilities disabilitiesArray = new DexModel.ArrayOfStringDisabilities();
            disabilitiesArray.DisabilityCode = c.Disabilities__c.split(';');
            clientReq.Disabilities = disabilitiesArray;
        }

        return clientReq;
    }

    //----Outlet (aka program) Methods ----------------------------------
    /*
    public static void SyncOutletsAndActivities()
    {// gets all outlet activities and outlet details, updates SF records
        List<Dex_Request_Log__c> requestLogs = new List<Dex_Request_Log__c>();

        // get all outlet activities
        Map<Integer, Outlet_Activity__c> oaMap = getOutletActivityMap();

        // get all outlets (serviceTerritories)
        Map<Integer, ServiceTerritory> oMap = getOutletMap();

        // request all Program activities 
        DexApi.ApiResponse r = DexApi.GetOutletActivities();

        if (r.dexRequestLog.Response_Status__c == 'ERROR')
        {
            r.dexRequestLog.Call_Method__c = 'GetOutletActivities';
            r.dexRequestLog.Object_Type__c = 'Outlet Activity';
            insert r.dexRequestLog;
            return;
        }

        // TODO add checks for http status and transaction status code
        Dex_Request_Log__c activities_log = r.dexRequestLog;
        activities_log.Call_Method__c = 'GetOutletActivities';
        activities_log.Object_Type__c = 'Outlet Activity';
        activities_log.Transaction_Status__c =  r.Envelope.Body.GetOutletActivitiesResponse.TransactionStatus.TransactionStatusCode;
        requestLogs.add(activities_log);

        // for each outlet activity, search map and update, or add to map. get set of outlet Ids
        Set<Integer> OutletIds = new Set<Integer>();

        for (DexModel.OutletActivity oa : r.Envelope.Body.GetOutletActivitiesResponse.OutletActivities.OutletActivity)
        {
            OutletIds.add(Integer.valueOf(oa.OutletId));
            Integer oaId = Integer.valueOf(oa.OutletActivityId);

            if (oaMap.containsKey(oaId))
            {
                Outlet_Activity__c oa_sf = oaMap.get(oaId);
                oa_sf.Name = oa.ActivityName.abbreviate(80);
                oa_sf.Activity__c = String.valueOf(oa.OrganisationActivityId);
                //oa_sf.Dex_Outlet_Id__c = Integer.valueOf(oa.OutletId);
                //oa_sf.Outlet_Name__c = oa.OutletName;
                oa_sf.Organisation_Activity_Id__c =  Integer.valueOf(oa.OrganisationActivityId);
                oa_sf.Start_Date__c = DexApi.getDateFromIsoString(oa.StartDate);
                oa_sf.End_Date__c = DexApi.getDateFromIsoString(oa.EndDate);
                oa_sf.Status__c = oa.Status;

                oaMap.put(oaId, oa_sf);
            }
            else 
            {
                Outlet_Activity__c oa_sf = new Outlet_Activity__c();
                oa_sf.Dex_Outlet_Activity_Id__c = oaId;
                oa_sf.Name = oa.ActivityName.abbreviate(80);
                oa_sf.Activity__c = String.valueOf(oa.OrganisationActivityId);
                //oa_sf.Dex_Outlet_Id__c = Integer.valueOf(oa.OutletId);
                //oa_sf.Outlet_Name__c = oa.OutletName;
                oa_sf.Organisation_Activity_Id__c = Integer.valueOf(oa.OrganisationActivityId);
                oa_sf.Start_Date__c = DexApi.getDateFromIsoString(oa.StartDate);
                oa_sf.End_Date__c = DexApi.getDateFromIsoString(oa.EndDate);
                oa_sf.Status__c = oa.Status;

                oaMap.put(oaId, oa_sf);
            }
        }

        // get default operating hours for new service territories
        OperatingHours oh = [SELECT Id FROM OperatingHours WHERE Name = 'default' LIMIT 1];
        

        // for set of outlet Ids, request outlet, search map and update, or add to map
        system.debug('outletIds: ' + outletIds);
        for (Integer i : OutletIds)
        {
            DexApi.ApiResponse r2 = DexApi.GetOutlet(i);
            system.debug('api response: ' + r2);
            
            Dex_Request_Log__c outlet_log = r2.dexRequestLog;
            outlet_log.Call_Method__c = 'GetOutlet';
            outlet_log.Object_Type__c = 'Outlet';
            outlet_log.Object_Id__c = String.valueOf('outletId: ' + i);
            
            if (outlet_log.Response_Status__c == 'ERROR')
            {
                system.debug('error');
                requestLogs.add(outlet_log);
                continue;
            }
            
            outlet_log.Transaction_Status__c = r2.Envelope.Body.GetOutletResponse.TransactionStatus.TransactionStatusCode;
            requestLogs.add(outlet_log);

            DexModel.Outlet outlet = r2.Envelope.Body.GetOutletResponse.Outlet;
            if (oMap.containsKey(i))
            {
                ServiceTerritory st = oMap.get(i);
                st.Name = outlet.Name.abbreviate(80);
                st.DEX_OutletName__c = outlet.Name;
                st.Street = outlet.OutletDetails.Address.AddressLine1;
                st.City = outlet.OutletDetails.Address.Suburb;
                st.State = outlet.OutletDetails.Address.State;
                st.PostalCode = outlet.OutletDetails.Address.Postcode;

                oMap.put(i, st);
            }
            else 
            {
                ServiceTerritory st = new ServiceTerritory();
                st.OperatingHoursId = oh.Id;
                st.DEX_OutletID__c = integer.valueOf(i);
                st.Name = outlet.Name.abbreviate(80);
                st.DEX_OutletName__c = outlet.Name;
                st.Street = outlet.OutletDetails.Address.AddressLine1;
                st.City = outlet.OutletDetails.Address.Suburb;
                st.State = outlet.OutletDetails.Address.State;
                st.PostalCode = outlet.OutletDetails.Address.Postcode;

                oMap.put(i, st);
            }
        }
        // upsert outlets using outlet_id as unique field

        if (oMap.values() != null && oMap.values().size() > 0)
        {
            upsert(oMap.values());
        }

        if (requestLogs != null && requestLogs.size() > 0)
        {
            insert requestLogs;
        }
        
        //go through oaMap, update lookup with outlet Id
        system.debug('oaMap: ' + oaMap);
        system.debug('oMap: ' + oMap);
        for (Outlet_Activity__c oa_sf : oaMap.values())
        {
            system.debug('oa_sf: ' + oa_sf.dex_outlet_id__c);
            if (oa_sf.Service_Territory__c == null)
            {
                oa_sf.Service_Territory__c = oMap.get(oa_sf.Dex_Outlet_Id__c).Id;
            }
        }

        // upsert outlet activities, using outlet_activity_id as unique field
        // skipping this as outlook activity has a master detail to program, which just exists in sf
        if (oaMap.values() != null && oaMap.values().size() > 0)
        {
            //upsert(oaMap.values());
        }
    }
    */
    

    // ------------- Case Methods ------------------------------------

    public static void upsertCase(String caseDexId)
    {// attempt to get case from dex api, update or create based on response

        Case c = getCase(caseDexId);

        if (c == null)
        {// TODO complain
            return;
        }

        DexApi.ApiResponse r = DexApi.GetCase(caseDexId);
        Dex_Request_Log__c drl = r.dexRequestLog;
        drl.Call_Method__c = 'getCase';
        drl.Object_Type__c = 'Case';
        drl.Object_Id__c = String.valueOf(c.dex_id__c);
        drl.Case__c = c.Id;

        DexModel.GetCaseResponse caseResponse = null;
        if (drl.Response_Status__c  == 'ERROR')
        {// handle error
            insert drl;
        }   
        else if (drl.Response_Code__c == 200)
        {
            caseResponse = r.Envelope.Body.GetCaseResponse;
           
            if (caseResponse.TransactionStatus.TransactionStatusCode == 'Success')
            {// found case, update
                updateCase(caseDexId);
            }
            else 
            {// no case found, create
                addCase(caseDexId);
            }
        }
        upsert drl;
    }

    public static void addCase(String caseDexId)
    {
        Case ca = getCase(caseDexId);

        if (ca == null)
        {// TODO complain
            return;
        }

        // get case members (clients)
        List<Case_Member__c> caseMembers = getCaseClients(caseDexId);
        
        Dex_Request_Log__c requestLog = new Dex_Request_Log__c();

        // create dexModel.CaseDetailEditable
        DexModel.CaseDetailEditable caseDetail = createCaseDetailEditable(ca);

        // create dexModel.ArrayOfCaseClient
        DexModel.ArrayOfCaseClient caseClientArray = createCaseClientArray(ca, caseMembers);

        // assemble case request
        DexModel.CaseRequest caseRequest = new DexModel.CaseRequest();
        caseRequest.DexCase = caseDetail;
        caseRequest.Clients = caseClientArray;

        // send to api
        DexApi.ApiResponse r = DexApi.AddCase(caseRequest);
        
        // handle response
        requestLog = r.dexRequestLog;
        requestLog.case__c = ca.Id;

        // Check response ok 
        requestLog.Call_Method__c = 'DexApiSofu.AddCase';
        requestLog.Object_Type__c = 'Case';
        requestLog.Object_Id__c = String.valueOf('caseId: ' + caseDexId);
        
        insert requestLog;

        ca.Dex_Last_Sync__c = datetime.now();

        if (requestLog.Response_Status__c  == 'ERROR')
        {// handle error
            ca.Dex_Last_Sync__c = datetime.now();
            ca.Dex_Sync_Status__c = 'Failure';
            ca.Dex_Sync_Message__c += 'See Dex Request Log for details:' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')';
        }   
        else if (requestLog.Response_Code__c == 200)
        {
            requestLog.Transaction_Status__c = r.Envelope.Body.AddCaseResponse.TransactionStatus.TransactionStatusCode;
            ca.Dex_Last_Sync__c = datetime.now();
            if (requestLog.Transaction_Status__c != 'Success')
            {
                ca.Dex_Sync_Status__c = 'Failure';
                ca.Dex_Sync_Message__c = '';
            }
            else 
            {
                ca.Dex_Sync_Status__c = 'Syncing';
                ca.Dex_Sync_Message__c = '';
            }
            ca.Dex_Sync_Message__c += getMessages(r.Envelope.Body.AddCaseResponse.TransactionStatus.Messages);
        }

        update requestLog;
        update ca;
    }

    public static void updateCase(String caseDexId)
    {
        Case ca = getCase(caseDexId);

        if (ca == null)
        {// TODO complain
            return;
        }

        // get case members (clients)
        List<Case_Member__c> caseMembers = getCaseClients(caseDexId);
        
        Dex_Request_Log__c requestLog = new Dex_Request_Log__c();

        // create dexModel.CaseDetailEditable
        DexModel.CaseDetailEditable caseDetail = createCaseDetailEditable(ca);

        // create dexModel.ArrayOfCaseClient
        DexModel.ArrayOfCaseClient caseClientArray = createCaseClientArray(ca, caseMembers);

        // assemble case request
        DexModel.CaseRequest caseRequest = new DexModel.CaseRequest();
        caseRequest.DexCase = caseDetail;
        caseRequest.Clients = caseClientArray;

        // send to api
        DexApi.ApiResponse r = DexApi.UpdateCase(caseRequest);
        
        // handle response
        requestLog = r.dexRequestLog;
        requestLog.Case__c = ca.Id;

        // Check response ok 
        requestLog.Call_Method__c = 'DexApiSofu.UpdateCase';
        requestLog.Object_Type__c = 'Case';
        requestLog.Object_Id__c = String.valueOf('caseId: ' + caseDexId);

        insert requestLog;

        ca.Dex_Last_Sync__c = datetime.now();
        ca.Dex_Sync_Message__c = '';

        if (requestLog.Response_Status__c  == 'ERROR')
        {
            ca.Dex_Last_Sync__c = datetime.now();
            ca.Dex_Sync_Status__c = 'Failure';
            ca.Dex_Sync_Message__c += 'See Dex Request Log for details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')';
        }   
        else if (requestLog.Response_Code__c == 200)
        {
            requestLog.Transaction_Status__c = r.Envelope.Body.UpdateCaseResponse.TransactionStatus.TransactionStatusCode;
            ca.Dex_Last_Sync__c = datetime.now();
            if (requestLog.Transaction_Status__c != 'Success')
            {
                ca.Dex_Sync_Status__c = 'Failure';
                ca.Dex_Sync_Message__c += r.Envelope.Body.UpdateCaseResponse.TransactionStatus.Messages;
                system.debug('failed case: ' + r.Envelope.Body.UpdateCaseResponse.TransactionStatus.Messages);
                system.debug(getMessages(r.Envelope.Body.UpdateCaseResponse.TransactionStatus.Messages));
            }
            else 
            {
                ca.Dex_Sync_Status__c = 'Syncing';
                ca.Dex_Sync_Message__c = '';
            }
        }
        
        try {
            update ca;
        } 
        catch (Exception e) 
        {
            system.debug('error updating case: ' + e.getMessage() + ' '+ e.getStackTraceString());
            requestLog.Transaction_Status__c = 'ERROR';
            requestLog.Error_Message__c = '\n' + 'Error updating Case - ' + caseDexId + ' (see session log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + requestLog.id + ') - ' + e.getMessage(); 
            update ca; 
        }

        update requestLog;
        
    }

    public static DexModel.CaseDetailEditable createCaseDetailEditable(Case ca)
    {
        DexModel.CaseDetailEditable caseDetail = new DexModel.CaseDetailEditable();
        //caseDetail.CaseId = ca.Id;
        caseDetail.CaseId = ca.Dex_Id__c;
        
        caseDetail.OutletActivityId = Integer.valueOf(ca.Outlet_Activity__r.Dex_Outlet_Activity_Id__c);

        if (ca.Total_Number_of_Unidentified_Clients__c != null)
        {
            caseDetail.TotalNumberOfUnidentifiedClients = Integer.valueOf(ca.Total_Number_of_Unidentified_Clients__c);
        }
        if (ca.Case_Closed_Date__c != null)
        {// removed case closed date
            //caseDetail.EndDate = DexApi.getIsoDatetime(ca.Case_Closed_Date__c, false);
        }
        if (ca.Date_Of_Parenting_Agreement__c != null)
        {
            caseDetail.ParentingAgreementOutcome.ParentingAgreementOutcomeCode = ca.Parenting_Agreement_Outcome__c;
            caseDetail.ParentingAgreementOutcome.DateOfParentingAgreement = DexApi.getIsoDatetime(ca.Date_Of_Parenting_Agreement__c, false);
            caseDetail.ParentingAgreementOutcome.DidLegalPractitionerAssistWithFormalisingAgreement = ca.Did_Legal_Assist_With_Agreement__c;
        }
        if (ca.Section60I_Date_Issued__c != null)
        {
            caseDetail.Section60I.Section60ICertificateTypeCode = ca.Section60I_Certificate_Type__c;
            caseDetail.Section60I.DateIssued = DexApi.getIsoDatetime(ca.Section60I_Date_Issued__c, false);
        }
        if (ca.Date_of_Property_Agreement__c != null)
        {
            caseDetail.PropertyAgreementOutcome.PropertyAgreementOutcomeCode = ca.Property_Agreement_Outcome__c;
            caseDetail.PropertyAgreementOutcome.DateOfPropertyAgreement = DexApi.getIsoDatetime(ca.Date_of_Property_Agreement__c, false);
            caseDetail.PropertyAgreementOutcome.DidLegalPractitionerAssistInPropertyMediation = ca.Did_Legal_Assist_In_Property_Mediation__c;
        }
        
        return caseDetail;
    }

    public static DexModel.ArrayOfCaseClient createCaseClientArray(Case ca, List<Case_Member__c> caseMembers)
    {
        DexModel.ArrayOfCaseClient clientArray = new DexModel.ArrayOfCaseClient();

        // add primary client
        if (ca.Contact != null)
        {
            DexModel.CaseClient primaryCC = createCaseClient(
                ca.Contact.Dex_Id__c, ca.Other_Reasons_for_seeking_assistance__c, ca.Primary_Reason_For_Seeking_assistance__c,
                ca.Exit_Reason__c, ca.Referral_Source__c
            );
            clientArray.CaseClient.add(primaryCC);
        }
        

        // add other clients
        
        for (Case_Member__c cm : caseMembers)
        {
            if (cm.Related_Contact__r.Dex_Id__c != ca.Contact.Dex_Id__c)
            {
                DexModel.CaseClient additionalCC = createCaseClient(
                cm.Related_Contact__r.Dex_Id__c, cm.Other_Reasons_for_seeking_assistance__c, 
                cm.Primary_Reason_For_Seeking_assistance__c, cm.exit_Reason__c, ca.Referral_Source__c
                );

                clientArray.CaseClient.add(additionalCC);
            }
        }
        
        return clientArray;
    }

    public static DexModel.CaseClient createCaseClient(String clientDexId, String ReasonsForAssistance, String primaryReason, String exitReason, String referralSource)
    {
        DexModel.CaseClient cc = new DexModel.CaseClient();

        cc.ClientId = clientDexId;
        if (primaryReason != null)
        {
            cc.ReasonsForAssistance.ReasonForAssistance.add(createReasonForAssistance(primaryReason, true));
        }
        
        system.debug('primary reason: ' + primaryReason);
        system.debug('reasonsForAssistance: ' + ReasonsForAssistance);

        Map<String, String> refMap = getReferralSourceMap();

        if (ReasonsForAssistance != null)
        {
            for (String reason : ReasonsForAssistance.split(';'))
            {
                if (reason == primaryReason)
                {// skip
                    continue;
                }
                DexModel.ReasonForAssistance rfa = new DexModel.ReasonForAssistance();
                rfa.AssistanceNeededCode = reason;
                rfa.IsPrimary = false;

                cc.ReasonsForAssistance.ReasonForAssistance.add(rfa);
            }
        }
        if (refMap.containsKey(referralSource))
        {
            cc.ReferralSourceCode = refMap.get(referralSource);
        }
        if (exitReason != null) 
        { 
            cc.ExitReasonCode = exitReason;
        }
        
        return cc;
    }

    public static DexModel.ReasonForAssistance createReasonForAssistance(String reason, Boolean isPrimary)
    {
        DexModel.ReasonForAssistance rfa = new DexModel.ReasonForAssistance();

        rfa.AssistanceNeededCode = reason;
        rfa.IsPrimary = isPrimary;

        return rfa;
    }

    // ------------------------------------------------------------------------------

    // ------------- Session Methods ------------------------------------------------
    public static void upsertSession(String caseDexId, String sessionId)
    {
        Case ca = getCase(caseDexId);
        DexApi.ApiResponse r = DexApi.GetSession(ca.Dex_Id__c, sessionId);
        Dex_Request_Log__c drl = r.dexRequestLog;
        drl.Call_Method__c = 'getSession';
        drl.Object_Type__c = 'Session';
        drl.Object_Id__c = String.valueOf(sessionId);
        //drl.Session__c = sessionId;

        

        DexModel.GetSessionResponse sessionResponse = null;
        if (drl.Response_Status__c  == 'ERROR')
        {// handle error
            insert drl;
        }   
        else if (drl.Response_Code__c == 200)
        {
            sessionResponse = r.Envelope.Body.GetSessionResponse;
           
            if (sessionResponse.TransactionStatus.TransactionStatusCode == 'Success')
            {// found session, update
                updateSession(sessionId);
            }
            else 
            {// no session found, create
                addSession(sessionId);
            }
        }
    }

    public static void addSession(String sessionID)
    {
        system.debug('update session: ' + sessionId);
        Session__c s = getSession(sessionID);
        system.debug('s: ' + s);

        if (s == null)
        {// TODO complain
            s.Dex_Sync_Status__c = 'Failure';
            s.Dex_Sync_Message__c = 'Couldn\'t find session';
            update s;
            return;
        }

        if (s.Start_Date_Time__c.date() > s.case__r.Case_Closed_Date__c)
        {
            s.Dex_Sync_Status__c = 'Skipped';
            s.Dex_Sync_Message__c = 'Skipped because session date is after the case closed date.';
            update s;
            return;
        }

        // get session participants (clients)
        List<Session_Participant__c> sessionParticipants = getSessionParticipants(sessionID);

        // get case details
        Case c = [SELECT Id, Dex_Sync_Status__c, Dex_Child_Sync_Status__c, Dex_Sync_Message__c FROM Case WHERE Id = :s.Case__r.Id];
        
        Dex_Request_Log__c requestLog = new Dex_Request_Log__c();

        // create dexModel.SessionDetailsExtended
        DexModel.SessionDetailsExtended sessionDetail = createSessionDetail(s);

        // create dexModel.SessionClients
        DexModel.SessionClients sessionClients = createSessionClients(sessionParticipants);

        // assemble case request
        DexModel.AddSessionRequest sessionRequest = new DexModel.AddSessionRequest();
        sessionDetail.Clients = sessionClients;
        sessionRequest.Session = sessionDetail;
        //sessionRequest.CaseId = s.Case__r.Id;
        sessionRequest.CaseId = s.Case__r.Dex_Id__c;

        // send to api
        DexApi.ApiResponse r = DexApi.AddSession(sessionRequest);
        
        // handle response
        requestLog = r.dexRequestLog;
        //requestLog.Session__c = SessionId;

        // Check response ok 
        requestLog.Call_Method__c = 'DexApiSofu.AddSession';
        requestLog.Object_Type__c = 'Session';
        requestLog.Object_Id__c = String.valueOf('sessionId: ' + s.Id);
        requestLog.Session__c = s.Id;
        insert requestLog;

        // update Session Dex Fields
        s.Dex_Last_Sync__c = datetime.now();

        if (requestLog.Response_Status__c == 'ERROR')
        {// handle error
            requestLog.Transaction_Status__c = 'Failure';
            s.Dex_Last_Sync__c = datetime.now();
            s.Dex_Sync_Status__c = 'Failure';
            s.Dex_Sync_Message__c = 'See Dex Request Log for details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')';
        }   
        else if (requestLog.Response_Code__c == 200)
        {
            requestLog.Transaction_Status__c = r.Envelope.Body.AddSessionResponse.TransactionStatus.TransactionStatusCode;
            s.Dex_Last_Sync__c = datetime.now();
            s.Dex_Sync_Status__c = r.Envelope.Body.AddSessionResponse.TransactionStatus.TransactionStatusCode;
            s.Dex_Sync_Message__c = getMessages(r.Envelope.Body.AddSessionResponse.TransactionStatus.Messages);
            
            if (requestLog.Transaction_Status__c != 'Success')
            {
                requestLog.Transaction_Status__c = 'Failure';
                s.Dex_Sync_Status__c = 'Failure';
                c.Dex_Child_Sync_Status__c = 'Failure';
                if (c.Dex_Sync_Message__c == null) { c.Dex_Sync_Message__c = ''; }
                c.Dex_Sync_Message__c += '\n' + 'Error updating session: ' + s.Dex_Id__c + ' (' + getMessages(r.Envelope.Body.AddSessionResponse.TransactionStatus.Messages) + ')'; 
                update c;
            }
        }
        else 
        {
            requestLog.Transaction_Status__c = 'Failure';
            s.Dex_Sync_Status__c = 'Failure';
            if (c.Dex_Sync_Message__c == null) { c.Dex_Sync_Message__c = ''; }
            s.Dex_Sync_Message__c += 'See Dex Request Log for details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')';
            c.Dex_Child_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += '\n' + 'Error updating session: ' + s.Dex_Id__c + ' (see session for more details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + s.id + ')'; 
            update c;
        }

        try 
        {
            update s;
            update requestLog;
        }
        catch (DMLException e)
        {// error updating session record, add error to case dex sync error message
            c.Dex_Sync_Message__c += '\n' + 'Error updating session (see session for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + s.id + '): ' + s.Dex_Id__c + ' - ' + e.getMessage(); 
            requestLog.Error_Message__c = e.getMessage() + ' - ' + e.getStackTraceString();
            update c;
            update requestLog;
        }
    }

    public static void updateSession(String sessionID)
    {
        system.debug('update session: ' + sessionId);
        Session__c s = getSession(sessionID);
        system.debug('s: ' + s);
        if (s == null)
        {// TODO complain
            s.Dex_Sync_Status__c = 'Failure';
            s.Dex_Sync_Message__c = 'Couldn\'t find session';
            update s;
            return;
        }

        if (s.Start_Date_Time__c.date() > s.case__r.Case_Closed_Date__c)
        {
            s.Dex_Sync_Status__c = 'Skipped';
            s.Dex_Sync_Message__c = 'Skipped because session date is after the case closed date.';
            update s;
            return;
        }

        // get session participants (clients)
        List<Session_Participant__c> sessionParticipants = getSessionParticipants(sessionID);

        // get case details
        Case c = [SELECT Id, Dex_Sync_Status__c, Dex_Child_Sync_Status__c, Dex_Sync_Message__c FROM Case WHERE Id = :s.Case__r.Id];
        
        Dex_Request_Log__c requestLog = new Dex_Request_Log__c();

        // create dexModel.SessionDetailsExtended
        DexModel.SessionDetailsExtended sessionDetail = createSessionDetail(s);

        // create dexModel.SessionClients
        DexModel.SessionClients sessionClients = createSessionClients(sessionParticipants);

        // assemble case request
        DexModel.UpdateSessionRequest sessionRequest = new DexModel.UpdateSessionRequest();
        sessionDetail.Clients = sessionClients;
        sessionRequest.Session = sessionDetail;
        //sessionRequest.CaseId = s.Case__r.Id;
        sessionRequest.CaseId = s.Case__r.Dex_Id__c;

        // send to api
        DexApi.ApiResponse r = DexApi.UpdateSession(sessionRequest);
        
        // handle response
        requestLog = r.dexRequestLog;
        //requestLog.Session__c = sessionId;

        // Check response ok 
        requestLog.Call_Method__c = 'DexApiSofu.UpdateSession';
        requestLog.Object_Type__c = 'Session';
        requestLog.Object_Id__c = String.valueOf('sessionId: ' + s.Id);
        requestLog.Session__c = s.Id;
        insert requestLog;

        // update Session Dex Fields
        s.Dex_Last_Sync__c = datetime.now();
        
        if (requestLog.Response_Status__c  == 'ERROR')
        {// handle error
            s.Dex_Last_Sync__c = datetime.now();
            s.Dex_Sync_Status__c = 'Failure';
            s.Dex_Sync_Message__c += 'See Dex Request Log for details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + requestLog.id;

            c.Dex_Child_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += '\n' + 'Error updating session: ' + s.Dex_Id__c + ' (see session log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')'; 

            update c;
        }   
        else if (requestLog.Response_Code__c == 200)
        {
            requestLog.Transaction_Status__c = r.Envelope.Body.UpdateSessionResponse.TransactionStatus.TransactionStatusCode;
            s.Dex_Last_Sync__c = datetime.now();
            s.Dex_Sync_Status__c = requestLog.Transaction_Status__c;
            s.Dex_Sync_Message__c += getMessages(r.Envelope.Body.UpdateSessionResponse.TransactionStatus.Messages);
            update requestLog;

            if (requestLog.Transaction_Status__c != 'Success')
            {
                requestLog.Transaction_Status__c = 'Failure';
                s.Dex_Sync_Status__c = 'Failure';
                c.Dex_Child_Sync_Status__c = 'Failure';
                c.Dex_Sync_Message__c += '\n' + 'Error updating session: ' + s.Dex_Id__c + ' (' + getMessages(r.Envelope.Body.UpdateSessionResponse.TransactionStatus.Messages) + ')'; 
                update c;
            }
        }
        else 
        {
            requestLog.Transaction_Status__c = 'Failure';
            s.Dex_Sync_Status__c = 'Failure';
            s.Dex_Sync_Message__c += 'See Dex Request Log for details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + requestLog.id + ')';
            c.Dex_Child_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += '\n' + 'Error updating session: ' + s.Dex_Id__c + ' (see session for more details: ' + URL.getSalesforceBaseUrl().toExternalForm() + '/' + s.id + ')'; 
            update c;
        }

        try 
        {
            update s;
        }
        catch (DMLException e)
        {// error updating session record, add error to case dex sync error message
            c.Dex_Child_Sync_Status__c = 'Failure';
            c.Dex_Sync_Message__c += '\n' + 'Error updating session (see session log for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + requestLog.id + '): ' + s.Dex_Id__c + ' - ' + e.getMessage(); 
            requestLog.Error_Message__c += e.getMessage() + ' - ' + e.getStackTraceString();
            update c;
            update requestLog;
        }
    }

    public static DexModel.SessionDetailsExtended createSessionDetail(Session__c s)
    {
        Map<String, List<Dex_Service_Type__mdt>> serviceMap = getDexServiceTypeMap();

        DexModel.SessionDetailsExtended sd = new DexModel.SessionDetailsExtended();
        sd.SessionId = s.Dex_Id__c;
        if (s.Start_Date_Time__c != null)
        {
            sd.SessionDate = DexApi.getIsoDatetime(s.Start_Date_Time__c, false);
        }
        if (s.service__c != null)
        {
            sd.ServiceTypeId = integer.valueOf(s.service__c);
        }
        if (s.Total_number_of_Unidentified_Clients__c != null)
        {
            sd.TotalNumberOfUnidentifiedClients = Integer.valueOf(s.Total_number_of_Unidentified_Clients__c);
        }
        if (s.Fees_Charged__c != null)
        {
            sd.FeesCharged = s.Fees_Charged__c;
        }
        sd.MoneyBusinessCommunityEducationWorkshopCode = s.Money_Business_Community_Education__c;
        sd.InterpreterPresent = s.Interpreter_Present__c;
        if (s.Extra_Items__c != null)
        {
            for (String x : s.Extra_Items__c.split(';'))
            {
                sd.ExtraItems.ExtraItemCode.add(x);
            }
        }
        if (s.Quantity__c != null)
        {
            sd.Quantity = integer.valueOF(s.Quantity__c);
        }
        if (s.Duration_Minutes__c != null && s.Duration_Hours__c != null)
        {
            integer minutes = integer.valueOF(s.Duration_Hours__c) * 60;
            minutes += integer.valueOF(s.Duration_Minutes__c);
            sd.DexTime = minutes; 
            
            if (s.Case__r.Program__r.Include_travel_time_in_session_time__c == true && s.Case_Notes_Travel_Hours__c != null)
            {
                sd.DexTime += integer.valueOf(s.Case_Notes_Travel_Hours__c * 60);
            }
            if (s.Case__r.Program__r.Include_indirect_time_in_session_time__c == true && s.Case_Notes_Indirect_Hours__c != null)
            {
				sd.DexTime += integer.valueOf(s.Case_Notes_Indirect_Hours__c * 60);
            }
        }
        
        if (s.Total_Cost__c != null)
        {
            sd.TotalCost = integer.valueOF(s.Total_Cost__c);
        }
       
        if (serviceMap.containsKey(s.case__r.Program__r.Program_Type__c))
        {
            List<Dex_Service_Type__mdt> serviceList = serviceMap.get(s.case__r.Program__r.Program_Type__c);
            for (Dex_Service_Type__mdt dserv : serviceList)
            {
				if(s.Service__c == dserv.Service_Type_Id__c && dserv.Disable_Time_Sync__c == true)
                {
                    sd.DexTime = null;
                }
                if(s.Service__c == dserv.Service_Type_Id__c && dserv.Disable_Cost_Sync__c == true)
                {
                    sd.TotalCost = null;
                }
            }
        }
        sd.TopicCode = s.Topic_Code__c;
        sd.ServiceSettingCode = s.Service_Setting__c;

        return sd;
    }

    public static DexModel.SessionClients createSessionClients(List<Session_Participant__c> spList)
    {
        DexModel.SessionClients clients = new DexModel.SessionClients();

        for (Session_Participant__c sp : spList)
        {
            DexModel.SessionClient sc = new DexModel.SessionClient();
            sc.ClientId = sp.Contact__r.Dex_Id__c;
            sc.ParticipationCode = sp.Session_Role__c;
            if (sp.Session__r.Referral_Type__c != null && sp.Session__r.Referral_Reason__c != null)
            {
                sc.ClientReferralOutWithPurpose = new dexModel.Referrals();
                dexModel.Referral ref = new dexModel.Referral();
                ref.TypeCode = sp.Session__r.Referral_Type__c;
                ref.PurposeCodes = new dexModel.Purposes();
                ref.PurposeCodes.PurposeCode.add(sp.Session__r.Referral_Reason__c);
                
                sc.ClientReferralOutWithPurpose.Referral.add(ref);
            }
            clients.SessionClient.add(sc);
        }

        return clients;
    }

    // ------------- Session Assessment Methods -----------------------------------------
    
    public static void updateSessionClientAssessments(Id sessionClientId, String sessionId)
    {// updates(creates) session assessments and client session assessments dependant on id
		Session__c s = getSession(sessionID);
        List<Client_Session_Assessment__c> assessments = getClientSessionAssessment(sessionClientId, sessionId);
        String case_id = '';
        String session_id = '';
        String client_id = '';

        if ( assessments.size() == 0 )
        {
            return;
        }

        if (s.Start_Date_Time__c.date() > s.case__r.Case_Closed_Date__c)
        {
            s.Dex_Session_Assessments_Sync_Status__c = 'Skipped';
            s.Dex_Session_Assessments_Sync_Message__c = 'Skipped because session date is after the case closed date.';
            update s;
            return;
        }

        // get case details
        Case ca = [SELECT Id, Dex_Sync_Status__c, Dex_Child_Sync_Status__c, Dex_Sync_Message__c FROM Case WHERE Id = :s.Case__r.Id];

        Client_Session_Assessment__c c = assessments[0];
        case_id = c.Session__r.Case__r.Dex_Id__c;
        session_id = c.Session__r.Dex_Id__c;
        client_id = c.Session_Participant__r.Contact__r.Dex_Id__c;
        
        String assessmentType = '';

        DexModel.UpdateSessionAssessmentsRequest sessionAssessmentRequest = new DexModel.UpdateSessionAssessmentsRequest();
        DexModel.UpdateClientAssessmentsRequest clientAssessmentRequest = new DexModel.UpdateClientAssessmentsRequest();

        if ( sessionClientId != null ) { assessmentType = 'Client'; }
        else { assessmentType = 'Session'; }

        
        // create assessments
        List<DexModel.Assessment> assessmentList = new List<DexModel.Assessment>();
        for ( Client_Session_Assessment__c csa : assessments )
        {
            // removed at request of Daniel TT-29587
            //if (csa.Score_Type__c == 'SATISFACTION' && csa.Session_Participant__r.Contact__c != null && csa.Session_Participant__r.Contact__r.Social_Futures_Feedback_Consent__c != 'Yes')
            //{// client did not consent to feedback survey, skip this one
            //    continue;
            //}
            DexModel.Assessment a = new DexModel.Assessment();
            a = createAssessment(csa);
            assessmentList.add(a);
        }

        if (assessmentList.size() == 0)
        {
            s.Dex_Session_Assessments_Sync_Status__c = 'Skipped';
            s.Dex_Session_Assessments_Sync_Message__c = 'client did not consent to feedback survey.';
            update s;
            return;
        }

        // send to api
        DexApi.ApiResponse r = new DexApi.ApiResponse();
        if (assessmentType == 'Session')
        {   sessionAssessmentRequest.SessionAssessment.CaseId = case_Id;
            sessionAssessmentRequest.SessionAssessment.SessionId = session_Id;
            sessionAssessmentRequest.SessionAssessment.RemoveAll = false;
            sessionAssessmentRequest.SessionAssessment.Assessments.Assessment.addAll(assessmentList);
            r = DexApi.UpdateSessionAssessments(sessionAssessmentRequest);
        }
        else
        {
            clientAssessmentRequest.ClientAssessment.CaseId = case_Id;
            clientAssessmentRequest.ClientAssessment.ClientId = client_Id;
            clientAssessmentRequest.ClientAssessment.SessionId = session_Id;
            clientAssessmentRequest.ClientAssessment.RemoveAll = false;
            clientAssessmentRequest.ClientAssessment.Assessments.Assessment.addAll(assessmentList);
            r = DexApi.UpdateClientAssessments(clientAssessmentRequest);
        }
        
        // handle response
        Dex_Request_Log__c requestLog = r.dexRequestLog;
        //requestLog.Session__c = sessionId;
        // Check response ok 
        requestLog.Call_Method__c = 'DexApiSofu.updateClientAssessments';
        requestLog.Object_Type__c = 'Session Assessment';
        requestLog.Object_Id__c = String.valueOf('session id: ' + sessionId + ' or Session Participant id: ' + sessionClientId);
        requestLog.Session__c = s.Id;

        if (requestLog.Response_Status__c  == 'ERROR')
        {// handle error
            s.Dex_Last_Sync__c = datetime.now();
            s.Dex_Session_Assessments_Sync_Status__c = 'Failure';
            s.Dex_Session_Assessments_Sync_Message__c = 'Error with session assessments, see session dex request log for details';

            ca.Dex_Child_Sync_Status__c = 'Failure';
            ca.Dex_Sync_Message__c += '\n' + 'Error updating Client / Assessment score (see Session for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + s.id + ')'; 
            update ca;
        }   
        else if (requestLog.Response_Code__c == 200)
        {
            if (assessmentType == 'Session')
            {
                requestLog.Transaction_Status__c = r.Envelope.Body.UpdateSessionAssessmentsResponse.TransactionStatus.TransactionStatusCode;
                s.Dex_Session_Assessments_Sync_Status__c = requestLog.Transaction_Status__c;
                s.Dex_Session_Assessments_Sync_Message__c = getMessages(r.Envelope.Body.UpdateSessionAssessmentsResponse.TransactionStatus.Messages);
            }
            else 
            {
                requestLog.Transaction_Status__c = r.Envelope.Body.UpdateClientAssessmentsResponse.TransactionStatus.TransactionStatusCode;  
                s.Dex_Session_Assessments_Sync_Status__c = requestLog.Transaction_Status__c;
                s.Dex_Session_Assessments_Sync_Message__c = getMessages(r.Envelope.Body.UpdateClientAssessmentsResponse.TransactionStatus.Messages); 
            }

            if (requestLog.Transaction_Status__c != 'Success')
            {
                ca.Dex_Child_Sync_Status__c = 'Failure';
                ca.Dex_Sync_Message__c += '\n' + 'Error updating Client / Assessment score: ' + s.Dex_Session_Assessments_Sync_Message__c + '(see Session for more details: ' + URL.getSalesforceBaseUrl().toExternalForm()+ '/' + s.id + ')'; 
                update ca;
            }
        }

        try {
            update s;
        }
        catch (DMLException e)
        {// error updating session record,
           
        }

        insert requestLog;
    }

    public static DexModel.Assessment createAssessment(Client_Session_Assessment__c csa)
    {
        DexModel.Assessment a = new DexModel.Assessment();

        a.AssessmentPhaseCode = csa.Assessment_Phase__c;
        a.ScoreTypeCode = csa.Score_Type__c;
        a.AssessedByCode = csa.Assessed__c;
        
        // circumstances
        if (csa.Age_Appropriate_Development__c != null) {a.Scores.ScoreCode.add(csa.Age_Appropriate_Development__c);}
        if (csa.Housing__c != null) {a.Scores.ScoreCode.add(csa.Housing__c);}
        if (csa.Material_well_being__c != null) {a.Scores.ScoreCode.add(csa.Material_well_being__c);}
        if (csa.Mental_Health__c != null) {a.Scores.ScoreCode.add(csa.Mental_Health__c);}
        if (csa.Physical_Health__c != null) {a.Scores.ScoreCode.add(csa.Physical_Health__c);}
        if (csa.Employment__c != null) {a.Scores.ScoreCode.add(csa.Employment__c);}
        if (csa.Financial_Resilience__c != null) {a.Scores.ScoreCode.add(csa.Financial_Resilience__c);}
        if (csa.Personal_and_Family_Safety__c != null) {a.Scores.ScoreCode.add(csa.Personal_and_Family_Safety__c);}
        if (csa.Community_Participation__c != null) {a.Scores.ScoreCode.add(csa.Community_Participation__c);}
        if (csa.Family_Functioning__c != null) {a.Scores.ScoreCode.add(csa.Family_Functioning__c);}
        if (csa.Education_and_skills_training__c != null) {a.Scores.ScoreCode.add(csa.Education_and_skills_training__c);}

        // goals
        if (csa.Changed_Knowledge__c != null) {a.Scores.ScoreCode.add(csa.Changed_Knowledge__c);}
        if (csa.Changed_Skills__c != null) {a.Scores.ScoreCode.add(csa.Changed_Skills__c);}
        if (csa.Changed_Behaviours__c != null) {a.Scores.ScoreCode.add(csa.Changed_Behaviours__c);}
        if (csa.Empowerment__c != null) {a.Scores.ScoreCode.add(csa.Empowerment__c);}
        if (csa.Engagement__c != null) {a.Scores.ScoreCode.add(csa.Engagement__c);}
        if (csa.Changed_Impact__c != null) {a.Scores.ScoreCode.add(csa.Changed_Impact__c);}
        
        // satisfaction
        if (csa.Service_Listened__c != null) {a.Scores.ScoreCode.add(csa.Service_Listened__c);}
        if (csa.Service_Received__c != null) {a.Scores.ScoreCode.add(csa.Service_Received__c);}
        if (csa.Situation_Improved__c != null) {a.Scores.ScoreCode.add(csa.Situation_Improved__c);}

        // community
        if (csa.Group_Skills__c != null) {a.Scores.ScoreCode.add(csa.Group_Skills__c);}
        if (csa.Organisational_Skills__c != null) {a.Scores.ScoreCode.add(csa.Organisational_Skills__c);}
        if (csa.Community_infrastructure__c != null) {a.Scores.ScoreCode.add(csa.Community_infrastructure__c);}
        if (csa.Social_Cohesion__c != null) {a.Scores.ScoreCode.add(csa.Social_Cohesion__c);}

        return a;
    }
    

    // ------------- Get SF Data Methods ------------------------------------------------
    // public static Map<Integer, Outlet_Activity__c> getOutletActivityMap()
    // {
    //     Map<Integer, Outlet_Activity__c> oaMap = new Map<Integer, Outlet_Activity__c>();
        
    //     for (Outlet_Activity__c oa : [
    //         SELECT Id, Name, Dex_Outlet_Activity_Id__c, Dex_Outlet_Id__c, Outlet_Name__c, Service_Territory__c,
    //             Program__c, Program_Name__c, Organisation_Activity_Id__c, Start_Date__c, End_Date__c, Activity__c,
    //             Status__c
    //         FROM Outlet_Activity__c
    //     ])
    //     {
    //         oaMap.put(Integer.valueOf(oa.Dex_Outlet_Activity_Id__c), oa);
    //     }

    //     return oaMap;
    // }

    // public static Map<Integer, ServiceTerritory> getOutletMap()
    // {
    //     Map<Integer, ServiceTerritory> oMap = new Map<Integer, ServiceTerritory>();

    //     for (ServiceTerritory st : [
    //         SELECT Id, Name, DEX_OutletID__c, DEX_OutletName__c, Street, City, State, PostalCode
    //         FROM ServiceTerritory
    //     ])
    //     {
    //         oMap.put(Integer.valueOf(st.DEX_OutletID__c), st);
    //     }

    //     return oMap;
    // }

    public static Map<String, String> getReferralSourceMap()
    {
        Map<String, String> refMap = new Map<String, String>();

        for (Dex_Referral_Source_Mapping__mdt ref : [SELECT MasterLabel, Dex_Referral_Code__c FROM Dex_Referral_Source_Mapping__mdt])
        {
            refMap.put(ref.MasterLabel, ref.Dex_Referral_Code__c);
        }

        return refMap;
    }

    public static Map<String, List<Dex_Service_Type__mdt>> getDexServiceTypeMap()
    {
        Map<String, List<Dex_Service_Type__mdt>> serviceMap = new Map<String, List<Dex_Service_Type__mdt>>();

        for (Dex_Service_Type__mdt serv : [SELECT MasterLabel, Program_Name__c, service_Type_Id__c, disable_time_sync__c, disable_cost_sync__c FROM Dex_Service_Type__mdt])
        {
            List<Dex_Service_Type__mdt> serviceList = new List<Dex_Service_Type__mdt>();
            if (serviceMap.containsKey(serv.Program_Name__c))
            {
                serviceList = serviceMap.get(serv.Program_Name__c);
            }
            serviceList.add(serv);
            serviceMap.put(serv.Program_Name__c, serviceList);
        }

        return serviceMap;
    }

    public static Contact getContact(String contactDexId)
    {
        Contact c = null;
        List<Contact> cList = [
            SELECT Id, Dex_Id__c, Dex_Sync_Message__c, Dex_Sync_Status__c, Dex_Last_Sync__c, SLK__c, Firstname, Lastname, Lastname_is_Pseudonym__c, Data_Exchange_Consent__c, RBA_Survey_Consent__c, 
                Birthdate, Birthdate_Is_Estimate__c, Sex__c, OtherStreet, OtherCity, OtherState, OtherPostalcode, OtherCountry,
                MailingStreet, MailingCity, MailingState, MailingPostalcode, MailingCountry,
                Account.BillingStreet, Account.BillingCity, Account.BillingState, Account.BillingPostalCode, Account.BillingCountry,
                Account.ShippingStreet, Account.ShippingCity, Account.ShippingState, Account.ShippingPostalCode, Account.ShippingCountry,
                Country_Of_Birth__c, Main_Language_Spoken_At_Home__c, Indigenous_Status__c, Has_Disabilities__c,
                Has_Carer__c, Homelessness_Indicator__c, Household_Composition__c, Main_Income_Source__c, Income_Frequency__c, Income_Amount__c,
                Month_Of_Arrival_in_Australia__c, Year_of_Arrival_in_Australia__c, Visa_Category__c, Ancestry__c, Accommodation_Setting__c, DVA_Card_Status__c, 
                Highest_Level_of_Education__c, Employment_Status__c, Is_Client_A_Carer__c, NDIS_Eligibility__c, Disabilities__c, Has_Validated_For_Duplicate_Client__c,
                Dex_Potential_Duplicates__c
            FROM Contact 
            WHERE Dex_Id__c = :contactDexId
        ];

        if (cList.size() > 0)
        {
            c = cList[0];
        }

        return c;
    }

    public static Case getCase(String caseDexId)
    {
        Case ca = null;
        
        List<Case> caList = [
            SELECT Id, Dex_Id__c, Case_Closed_Date__c, Total_Number_of_Unidentified_Clients__C, Outlet_Activity__r.Dex_Outlet_Activity_Id__c,
                ClosedDate, Parenting_Agreement_Outcome__c, Date_Of_Parenting_Agreement__c, Did_Legal_Assist_With_Agreement__c,
                Section60I_Certificate_Type__c, Section60I_Date_Issued__c, Contact.Id, Contact.Dex_Id__c, Other_Reasons_for_Seeking_Assistance__c,
                Primary_Reason_For_Seeking_Assistance__c, Exit_Reason__c, Referral_Source__c, Property_Agreement_Outcome__c, Date_of_Property_Agreement__c, 
                Did_Legal_Assist_In_Property_Mediation__c, Dex_Sync_Message__c, Dex_Sync_Status__c
            FROM Case 
            WHERE Dex_Id__c = :caseDexId
        ];
        

        if (caList.size() > 0)
        {
            ca = caList[0];
        }
        
        return ca;
    }

    public static List<Case_Member__c> getCaseClients(String caseDexId)
    {
        List<Case_Member__c> cmList = new List<Case_Member__c>();
        
        for (Case_Member__c cm : [
            SELECT Id, Case__r.Dex_Id__c, Related_Contact__r.Id, Related_Contact__r.Dex_Id__c, Relationship_Type__c, Adversarial_Relationship__c, Other_Reasons_for_seeking_assistance__c,
                Primary_Reason_For_Seeking_Assistance__c, Referral_Source__c, Exit_Reason__c
            FROM Case_Member__c
            WHERE case__r.Dex_Id__c = :caseDexId
        ])
        {
            cmList.add(cm);
        }
        
        return cmList;
    }

    public static Session__c getSession(String sessionId)
    {
        Session__c s = null;

        List<Session__c> sList = [
            SELECT Id, Dex_Id__c, Case__r.Id, Case__r.Dex_Id__c, Start_Date_Time__c, Service__c, Total_number_of_Unidentified_Clients__c,
                Fees_Charged__c, Money_Business_Community_Education__c, Interpreter_Present__c, case__r.Case_Closed_Date__c, case__r.Program__r.Name,
                Extra_Items__c, Quantity__c, Time__c, Total_Cost__c, Topic_Code__c, Service_Setting__c, Duration_Minutes__c, Duration_Hours__c,
                Dex_Session_Assessments_Sync_Status__c, Dex_Session_Assessments_Sync_Message__c, Dex_Sync_Message__c, Dex_Sync_Status__c,
                Referral_Type__c, Referral_Reason__c, Case_Notes_Indirect_Hours__c, Case_Notes_Travel_Hours__c, case__r.Program__r.Program_Type__c,
            	Case__r.Program__r.Include_indirect_time_in_session_time__c, Case__r.Program__r.Include_travel_time_in_session_time__c
            FROM Session__c
            WHERE Dex_Id__c = :sessionId OR Id = :sessionId
        ];

        if (sList.size() > 0)
        {
            s = sList[0];
        }

        return s;
    }

    public static List<Session_Participant__c> getSessionParticipants(String sessionId)
    {
        List<Session_Participant__c> spList = new List<Session_Participant__c>();
        // TODO: no object for referrals and its purposecodes exists, may be added in future
        for (Session_Participant__c sp : [
            SELECT Id, Contact__r.Id, Contact__r.Dex_Id__c, Session_Role__c, Session__r.Referral_Type__c, Session__r.Referral_Reason__c
            FROM Session_Participant__c
            WHERE Session__r.Dex_Id__c = :sessionId OR Session__r.Id = :sessionId
        ])
        {
            spList.add(sp);
        }

        return spList;
    }

    public static List<Client_Session_Assessment__c> getClientSessionAssessment(Id sessionParticipantId, String sessionId)
    {
        List<Client_Session_Assessment__c> assessmentList = new List<Client_Session_Assessment__c>();

        for (Client_Session_Assessment__c csa : [
            SELECT Session__r.Id, Session__r.Dex_Id__c, Session__r.Case__r.Id, Session__r.Case__r.Dex_Id__c, 
    			Session_Participant__r.Contact__r.Dex_Id__c, Session_Participant__r.Contact__r.Id, Age_Appropriate_Development__c,
                Session_Participant__r.Contact__c, Session_Participant__r.Contact__r.Social_Futures_Feedback_Consent__c,
                Assessed__c, Assessment_Phase__c, Assessment_Type__c, Changed_Behaviours__c, Changed_Impact__c,
                Changed_Skills__c, Name, Community_infrastructure__c, Community_Participation__c, Education_and_skills_training__c,
                Employment__c, Empowerment__c, Engagement__c, Family_Functioning__c, Financial_Resilience__c,
                Changed_Knowledge__c,  Housing__c, Material_well_being__c, Mental_Health__c, Group_Skills__c,
                Personal_and_Family_Safety__c, Physical_Health__c, Score_Type__c, Organisational_Skills__c,
                Service_Listened__c, Service_Received__c, Situation_Improved__c, Social_Cohesion__c
            FROM Client_Session_Assessment__c
            WHERE Session_Participant__c = :sessionParticipantId 
            AND (Session__r.Dex_Id__c = :sessionId OR Session__c = :sessionId)
        ])
        {
            assessmentList.add(csa);
        }

        return assessmentList;
    }

    // --- Utility methods ------------------------------------------------------------------------------------
    public static String getMessages(DexModel.Messages messages)
    {// converts dexModel.Message into a string
        String messageString = '';

        if (messages != null && messages.Message != null)
        {
            for (DexModel.Message msg : messages.Message)
            {
                messageString += msg.MessageLevel + ' - ' + msg.MessageDescription + '\n\n';
            }
        }

        return messageString;
    }
}
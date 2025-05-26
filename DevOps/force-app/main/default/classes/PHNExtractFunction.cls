public class PHNExtractFunction {
    
    @InvocableMethod(label='Extract PHN Report' description='Extracts a report of all PHN Objects in a given 3 Month period')
    public static void getPHNExtract (List<FlowInputs> request) {
        
        String csv;
        String query;
        String query2;
        Date StartMonth = request[0].StartMonth;
        String query3;
        String filetitle;
        String filepath;
        String orgpath;
        String enddate;
        String country;
        String language;
        String labourforce;
        String ndisparticipant;
        String maritalstatus;
        String employmentparticipation;
        String additiondiagnosis;
        String principlediagnosis;
        ContentVersion file;
        
//Client
        csv = 'organisation_path,client_key,slk,date_of_birth,est_date_of_birth,client_gender,client_atsi_status,country_of_birth,main_lang_at_home,prof_english,client_tags\n';
        query = 'SELECT id, SLK__c, PHN_Birthdate__c, PHN_Accuracy__c, PHN_Sex__c, PHN_Indigenous_Status__c, Country_of_Birth__c, Main_Language_Spoken_at_Home__c FROM Contact WHERE id IN (SELECT ContactId FROM Case WHERE Program_Name__c IN (\'Veterans Connect\', \'Veterans Connect - COI\') AND RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth)';
        query2 = 'SELECT id, SLK__c, PHN_Birthdate__c, PHN_Accuracy__c, PHN_Sex__c, PHN_Indigenous_Status__c, Country_of_Birth__c, Main_Language_Spoken_at_Home__c FROM Contact WHERE id IN (SELECT ContactId FROM Case WHERE Program_Name__c IN (\'Care Connect - Hunter Manning\', \'Care Connect - Hunter Manning - COI\') AND RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth)' ;
        query3 = 'SELECT id, SLK__c, PHN_Birthdate__c, PHN_Accuracy__c, PHN_Sex__c, PHN_Indigenous_Status__c, Country_of_Birth__c, Main_Language_Spoken_at_Home__c FROM Contact WHERE id IN (SELECT ContactId FROM Case WHERE Program_Name__c IN (\'Medicare Mental Health Centre\', \'Medicare Mental Health Centre - COI\') AND RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth)';
        filetitle = 'Clients.csv';
        filepath = '/Clients.csv';
        for ( List<Contact> results : database.query(query) ) {
          for ( Contact result : results ) {
              
            if(result.Country_of_Birth__c == '0000' || result.Country_of_Birth__c == '0003'){country = '9999';}else{country = result.Country_of_Birth__c;}
    
            if(result.Main_Language_Spoken_at_Home__c == '0002'){language = '9999';}else{language = result.Main_Language_Spoken_at_Home__c;}
            
            csv += 'PHN108:SF' + ',' + result.id + ',' + result.SLK__c + ',' + result.PHN_Birthdate__c + ',' + result.PHN_Accuracy__c + ',' + result.PHN_Sex__c + ',' + result.PHN_Indigenous_Status__c + ',' + country + ',' + language + ',' + '9' + '\n';
          }
        }
        for ( List<Contact> results2 : database.query(query2) ) {
          for ( Contact result2 : results2 ) {
              
            if(result2.Country_of_Birth__c == '0000' || result2.Country_of_Birth__c == '0003'){country = '9999';}else{country = result2.Country_of_Birth__c;}
    
            if(result2.Main_Language_Spoken_at_Home__c == '0002'){language = '9999';}else{language = result2.Main_Language_Spoken_at_Home__c;}
            
            csv += 'PHN108:SF_AFTER' + ',' + result2.id + ',' + result2.SLK__c + ',' + result2.PHN_Birthdate__c + ',' + result2.PHN_Accuracy__c + ',' + result2.PHN_Sex__c + ',' + result2.PHN_Indigenous_Status__c + ',' + country + ',' + language + ',' + '9' + '\n';
          }
        }
        for ( List<Contact> results3 : database.query(query3) ) {
          for ( Contact result3 : results3 ) {
              
            if(result3.Country_of_Birth__c == '0000' || result3.Country_of_Birth__c == '0003'){country = '9999';}else{country = result3.Country_of_Birth__c;}
    
            if(result3.Main_Language_Spoken_at_Home__c == '0002'){language = '9999';}else{language = result3.Main_Language_Spoken_at_Home__c;}
            
            csv += 'PHN108:SF_H2H' + ',' + result3.id + ',' + result3.SLK__c + ',' + result3.PHN_Birthdate__c + ',' + result3.PHN_Accuracy__c + ',' + result3.PHN_Sex__c + ',' + result3.PHN_Indigenous_Status__c + ',' + country + ',' + language + ',' + '9' + '\n';
          }
        }

        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Episodes
        csv = 'organisation_path,episode_key,client_key,episode_end_date,client_consent,episode_completion_status,referral_date,program_type,principal_focus,mental_health_treatment_plan,homelessness,client_postcode,labour_force_status,employment_participation,income_source,health_care_card,ndis_participant,marital_status,suicide_referral_flag,principal_diagnosis,additional_diagnosis,medication_antipsychotics,medication_anxiolytics,medication_hypnotics,medication_antidepressants,medication_psychostimulants,referrer_profession,referrer_organisation_type,organisation_type_referred_to_at_episode_conclusion,episode_tags\n';
        query = 'SELECT id, OrgPath__c, Program_Name__c, ContactId, PHN_End_Date__c, PHN_Consent__c, Completion_Status__c, PHN_Referral_Date__c, PHN_Program_Type__c, Contact.OtherPostalCode, Labour_Force_Status__c, Employment_Participation__c, NDIS_Participant__c, Marital_Status__c, Suicide_Referral_Flag__c, Principal_Diagnosis__c, Additional_Diagnosis__c, Referrer_Profession__c, Referrer_Organisation_Type__c, Program__r.PHN_Tag__c FROM Case WHERE Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth';
        filetitle = 'Episodes.csv';
        filepath = '/Episodes.csv';
        for ( List<Case> results : database.query(query) ) {
          for ( Case result : results ) {
              
            if(result.PHN_End_Date__c == null){enddate = '';}else{enddate = result.PHN_End_Date__c;}
                
            if(result.Additional_Diagnosis__c == null){additiondiagnosis = '0';}else{additiondiagnosis = result.Additional_Diagnosis__c;}
            
            if(result.Program_Name__c.contains('Medicare Mental Health Centre')){principlediagnosis = result.Principal_Diagnosis__c;}else{principlediagnosis = '999';}
            
            if(result.Program_Name__c.contains('Medicare Mental Health Centre')){labourforce = result.Labour_Force_Status__c;}else{labourforce = '9';}
            
            if(result.Program_Name__c.contains('Care Connect - Hunter Manning')){ndisparticipant = '9';}else{ndisparticipant = result.NDIS_Participant__c;}
            
            if(result.Program_Name__c.contains('Medicare Mental Health Centre')){maritalstatus = result.Marital_Status__c;}else{maritalstatus = '6';}
            
            if(result.Program_Name__c.contains('Veterans Connect')){employmentparticipation = result.Employment_Participation__c;}else{employmentparticipation = '9';}
            
            csv += result.OrgPath__c + ',' + result.id + ',' + result.ContactId + ',' + enddate + ',' + result.PHN_Consent__c + ',' + result.Completion_Status__c + ',' + result.PHN_Referral_Date__c + ',' + result.PHN_Program_Type__c + ',' + '3' + ',' + '9' + ',' + '9' + ',' + result.getSObject('Contact').get('OtherPostalCode') + ',' + labourforce + ',' + employmentparticipation + ',' + '9' + ',' + '9' + ',' + ndisparticipant + ',' + maritalstatus + ',' + result.Suicide_Referral_Flag__c + ',' + principlediagnosis + ',' + additiondiagnosis + ',' + '9' + ',' + '9' + ',' + '9' + ',' + '9' + ',' + '9' + ',' + result.Referrer_Profession__c + ',' + result.Referrer_Organisation_Type__c + ',' + '99' + ',' + result.Program__r.PHN_Tag__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Intake-Episodes
        csv = 'episode_organisation_path,episode_key,intake_organisation_path,intake_key\n';
        query = 'SELECT id, Program_Name__c, OrgPath__c FROM Case WHERE Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND  RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth';
        filetitle = 'intake-episodes.csv';
        filepath = '/intake-episodes.csv';
        for ( List<Case> results : database.query(query) ) {
          for ( Case result : results ) {
              
            csv += result.OrgPath__c + ',' + result.id + ',' + result.OrgPath__c + ',' + result.id + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Intake
        csv = 'organisation_path,intake_key,client_key,client_consent,referral_date,program_type,referrer_profession,referrer_organisation_type,date_client_contacted_intake,suicide_referral_flag,date_referred_to_other_service_at_intake_conclusion,organisation_type_referred_to_at_intake_conclusion,referred_to_organisation_path,intake_tags\n';
        query = 'SELECT id, Program_Name__c, OrgPath__c, ContactId, PHN_Consent__c, PHN_Referral_Date__c, PHN_Program_Type__c, Referrer_Profession__c, Referrer_Organisation_Type__c, Suicide_Referral_Flag__c FROM Case WHERE Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND  RecordTypeId != \'0122x0000000DkiAAE\' AND Date_of_Enquiry_or_Referral__c < :StartMonth';
        filetitle = 'intakes.csv';
        filepath = '/intakes.csv';
        for ( List<Case> results : database.query(query) ) {
          for ( Case result : results ) {
              
            csv += result.OrgPath__c + ',' + result.id + ',' + result.ContactId + ',' + result.PHN_Consent__c + ',' + result.PHN_Referral_Date__c + ',' + result.PHN_Program_Type__c + ',' + result.Referrer_Profession__c + ',' + result.Referrer_Organisation_Type__c + ',' + result.PHN_Referral_Date__c + ',' + result.Suicide_Referral_Flag__c + ',' + '' + ',' + '97' +  '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//IAR-DST
        csv = 'organisation_path,measure_key,intake_key,iar_dst_version,iar_dst_domain_1,iar_dst_domain_2,iar_dst_domain_3,iar_dst_domain_4,iar_dst_domain_5,iar_dst_domain_6,iar_dst_domain_7,iar_dst_domain_8,iar_dst_recommended_level_of_care,iar_dst_practitioner_level_of_care,iar_dst_tags\n';
        query = 'SELECT id, Case__c, Case__r.Program_Name__c, Case__r.OrgPath__c, Assessment_Date__c, iar_dst_domain_1__c, iar_dst_domain_2__c, iar_dst_domain_3__c, iar_dst_domain_4__c, iar_dst_domain_5__c, iar_dst_domain_6__c, iar_dst_domain_7__c, iar_dst_domain_8__c, iar_dst_recommended_level_of_care__c, Case__r.iar_dst_practitioner_level_of_care__c FROM Assessment_IAR__c WHERE Case__r.Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND RecordTypeId = \'012RF0000038f98YAA\' AND Assessment_Date__c < :StartMonth';
        filetitle = 'iar-dst.csv';
        filepath = '/iar-dst.csv';
        for ( List<Assessment_IAR__c> results : database.query(query) ) {
          for ( Assessment_IAR__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.Case__c + ',' + '2.adult' + ',' + result.iar_dst_domain_1__c + ',' + result.iar_dst_domain_2__c + ',' + result.iar_dst_domain_3__c + ',' + result.iar_dst_domain_4__c + ',' + result.iar_dst_domain_5__c + ',' + result.iar_dst_domain_6__c + ',' + result.iar_dst_domain_7__c + ',' + result.iar_dst_domain_8__c + ',' + result.iar_dst_recommended_level_of_care__c + ',' + result.Case__r.iar_dst_practitioner_level_of_care__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Collection Occasions
        csv = 'organisation_path,collection_occasion_key,episode_key,collection_occasion_date,reason_for_collection,collection_occasion_tags\n';
        query = 'SELECT id, Case__r.OrgPath__c, Program__c, Case__c, PHN_Assessment_Date__c, Reason_for_Collection__c FROM Assessment__c WHERE RecordTypeId IN (\'0129s0000004KXHAA2\', \'012RF000001C2ThYAK\') AND Program__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND Assessment_Date__c < :StartMonth';
        filetitle = 'collection-occasions.csv';
        filepath = '/collection-occasions.csv';
        for ( List<Assessment__c> results : database.query(query) ) {
          for ( Assessment__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.Case__c + ',' + result.PHN_Assessment_Date__c + ',' + result.Reason_for_Collection__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//K10+
        csv = 'organisation_path,measure_key,collection_occasion_key,k10p_item1,k10p_item2,k10p_item3,k10p_item4,k10p_item5,k10p_item6,k10p_item7,k10p_item8,k10p_item9,k10p_item10,k10p_item11,k10p_item12,k10p_item13,k10p_item14,k10p_score,k10p_tags\n';
        query = 'SELECT id, Case__r.OrgPath__c, Program__c, Tired_out_for_no_good_reason__c, Nervous__c, So_nervous_nothing_could_calm_you_down__c, Hopeless__c, Restless_or_fidgety__c, So_restless_you_could_not_sit_still__c, Depressed__c, That_everything_was_an_effort__c, So_sad_that_nothing_could_cheer_you_up__c, Worthless__c, Unable_to_work_or_study__c, Able_to_work_or_study_but_less_well__c, Needed_to_see_a_doctor__c, Physical_health_problems_were_the_cause__c, K10_Total_Score__c FROM Assessment__c WHERE RecordTypeId = \'0129s0000004KXHAA2\' AND Program__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND Assessment_Date__c < :StartMonth';
        filetitle = 'K10p.csv';
        filepath = '/K10p.csv';
        for ( List<Assessment__c> results : database.query(query) ) {
          for ( Assessment__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.id + ',' + result.Tired_out_for_no_good_reason__c + ',' + result.Nervous__c + ',' + result.So_nervous_nothing_could_calm_you_down__c + ',' + result.Hopeless__c + ',' + result.Restless_or_fidgety__c + ',' + result.So_restless_you_could_not_sit_still__c + ',' + result.Depressed__c + ',' + result.That_everything_was_an_effort__c + ',' + result.So_sad_that_nothing_could_cheer_you_up__c + ',' + result.Worthless__c + ',' + result.Unable_to_work_or_study__c + ',' + result.Able_to_work_or_study_but_less_well__c + ',' + result.Needed_to_see_a_doctor__c + ',' + result.Physical_health_problems_were_the_cause__c + ',' + result.K10_Total_Score__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//K5
        csv = 'organisation_path,measure_key,collection_occasion_key,k5_item1,k5_item2,k5_item3,k5_item4,k5_item5,k5_score,k5_tags\n';
        query = 'SELECT id, Case__r.OrgPath__c, Program__c, Nervous__c, Hopeless__c, Restless_or_fidgety__c, That_everything_was_an_effort__c, So_sad_that_nothing_could_cheer_you_up__c, K5_Score__c FROM Assessment__c WHERE RecordTypeId = \'012RF000001C2ThYAK\' AND Program__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND Assessment_Date__c < :StartMonth';

        filetitle = 'k5.csv';
        filepath = '/k5.csv';
        for ( List<Assessment__c> results : database.query(query) ) {
          for ( Assessment__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.id + ',' + result.Nervous__c + ',' + result.Hopeless__c + ',' + result.Restless_or_fidgety__c + ',' + result.That_everything_was_an_effort__c + ',' + result.So_sad_that_nothing_could_cheer_you_up__c + ',' + result.K5_Score__c + '\n';
          }
        }
        
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//SDQ
        csv = 'organisation_path,measure_key,collection_occasion_key,sdq_version,sdq_item1,sdq_item2,sdq_item3,sdq_item4,sdq_item5,sdq_item6,sdq_item7,sdq_item8,sdq_item9,sdq_item10,sdq_item11,sdq_item12,sdq_item13,sdq_item14,sdq_item15,sdq_item16,sdq_item17,sdq_item18,sdq_item19,sdq_item20,sdq_item21,sdq_item22,sdq_item23,sdq_item24,sdq_item25,sdq_item26,sdq_item27,sdq_item28,sdq_item29,sdq_item30,sdq_item31,sdq_item32,sdq_item33,sdq_item34,sdq_item35,sdq_item36,sdq_item37,sdq_item38,sdq_item39,sdq_item40,sdq_item41,sdq_item42,sdq_emotional_symptoms,sdq_conduct_problem,sdq_hyperactivity,sdq_peer_problem,sdq_prosocial,sdq_total,sdq_impact,sdq_tags\n';
        filetitle = 'sdq.csv';
        filepath = '/sdq.csv';
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Service Contacts
        csv = 'organisation_path,service_contact_key,episode_key,service_contact_date,service_contact_type,service_contact_postcode,service_contact_modality,service_contact_participants,service_contact_venue,service_contact_duration,service_contact_copayment,service_contact_participation_indicator,service_contact_interpreter,service_contact_no_show,service_contact_final,service_contact_start_time,funding_source,service_contact_site,service_contact_tags\n';
        query = 'SELECT id, Case__r.OrgPath__c, Program_Name__c, Case__c, PHN_Session_Date__c, Type__c, Postcode__c, Modality__c, Participants__c, Venue__c, Duration__c, Copayment__c, Client_Participation_Indicator__c, PHN_Interpreter__c, No_Show__c, Final__c, PHN_Start_Time__c, Funding_Source__c FROM Session__c WHERE Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND (RecordTypeId = \'0122x0000000HTlAAM\' OR RecordTypeId = \'0129s0000004IoGAAU\') AND (Status__c = \'Completed\' OR Status__c = \'Cancelled\' OR Status__c = \'No-Show\') AND Case__r.RecordTypeId != \'0122x0000000DkiAAE\' AND Session_Date__c < :StartMonth';
        filetitle = 'service-contacts.csv';
        filepath = '/service-contacts.csv';
        for ( List<Session__c> results : database.query(query) ) {
          for ( Session__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.Case__c + ',' + result.PHN_Session_Date__c + ',' + result.Type__c + ',' + result.Postcode__c + ',' + result.Modality__c + ',' + result.Participants__c + ',' + result.Venue__c + ',' + result.Duration__c + ',' + result.Copayment__c + ',' + result.Client_Participation_Indicator__c + ',' + result.PHN_Interpreter__c + ',' + result.No_Show__c + ',' + result.Final__c + ',' + result.PHN_Start_Time__c + ',' + result.Funding_Source__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Service Contact Practitioners
        csv = 'organisation_path,service_contact_practitioner_key,service_contact_key,practitioner_key,primary_practitioner_indicator\n';
        query = 'SELECT id, Case__r.OrgPath__c, Program_Name__c, OwnerId FROM Session__c WHERE Program_Name__c IN (\'Veterans Connect\', \'Care Connect - Hunter Manning\', \'Medicare Mental Health Centre\', \'Veterans Connect - COI\', \'Care Connect - Hunter Manning - COI\', \'Medicare Mental Health Centre - COI\') AND (RecordTypeId = \'0122x0000000HTlAAM\' OR RecordTypeId = \'0129s0000004IoGAAU\') AND (Status__c = \'Completed\' OR Status__c = \'Cancelled\' OR Status__c = \'No-Show\') AND Case__r.RecordTypeId != \'0122x0000000DkiAAE\' AND Session_Date__c < :StartMonth';
        filetitle = 'service-contact-practitioners.csv';
        filepath = '/service-contact-practitioners.csv';
        for ( List<Session__c> results : database.query(query) ) {
          for ( Session__c result : results ) {
              
            csv += result.Case__r.OrgPath__c + ',' + result.id + ',' + result.id + ',' + result.OwnerId + ',' + '1' + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Practitioners
        csv = 'organisation_path,practitioner_key,practitioner_category,atsi_cultural_training,practitioner_year_of_birth,practitioner_gender,practitioner_atsi_status,practitioner_active,practitioner_tags\n';
        query = 'SELECT id, Department, ATSI_Cultural_Training__c, Year_of_Birth__c, Sex__c, ATSI_Status__c, PHN_Active__c FROM User WHERE PMHC_Worker__c = true';
        filetitle = 'practitioners.csv';
        filepath = '/practitioners.csv';
        for ( List<User> results : database.query(query) ) {
          for ( User result : results ) {
              
            csv += 'PHN108:SF_AFTER' + ',' + result.id + ',' + '3' + ',' + result.ATSI_Cultural_Training__c + ',' + result.Year_of_Birth__c + ',' + result.Sex__c + ',' + result.ATSI_Status__c + ',' + result.PHN_Active__c + '\n';
            
            csv += 'PHN108:SF' + ',' + result.id + ',' + '3' + ',' + result.ATSI_Cultural_Training__c + ',' + result.Year_of_Birth__c + ',' + result.Sex__c + ',' + result.ATSI_Status__c + ',' + result.PHN_Active__c + '\n';
            
            csv += 'PHN108:SF_H2H' + ',' + result.id + ',' + '3' + ',' + result.ATSI_Cultural_Training__c + ',' + result.Year_of_Birth__c + ',' + result.Sex__c + ',' + result.ATSI_Status__c + ',' + result.PHN_Active__c + '\n';
          }
        }
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
//Metadata
        csv = 'key,value\ntype,PMHC\nversion,4.1';
        filetitle = 'metadata.csv';
        filepath = '/metadata.csv';
         
        file = new ContentVersion(
          title = filetitle,
          versionData = Blob.valueOf( csv ),
          pathOnClient = filepath
        );
         
        insert file;
        System.debug( file );
    }
//Invocables
    public class FlowInputs{
    
        @InvocableVariable
        public Date StartMonth;
        
        @InvocableVariable
        public String monthtext;
    }
}
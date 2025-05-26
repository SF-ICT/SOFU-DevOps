/**
 * Created by james on 20/3/21.
 */

public with sharing class sfSandboxSetupData
{
    public static List<Program__c> readPrograms()
    {
        List<Program__c> ps = new List<Program__c>();
        Program__c p = new Program__c();

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = true;
        p.Description__c = '<p>Connecting Home Adult works with people over 18 years old who are homeless, or at risk of homelessness, to achieve long-term housing goals.</p><p><br></p><p>This might be through supporting people to reconnect with their families or by helping people to find secure accommodation options. Connecting Home is an early intervention and prevention service which engages people prior to crisis to ensure people stay housed. It also provides crisis response through emergency short-term accommodation in collaboration with Housing NSW and the state-wide Link2Home Service.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a132x000000XjtUAAS';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Connecting Home - Adult';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        //p.Program_Manager__c = '0054a000000epOtAAI'; // Disabled as user is not valid user.
        p.Program_Type__c = 'Connecting Home';
        p.RecordTypeId = '0122x0000000HaxAAE';
        p.Services__c = '11;215;Housing Support';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>As a licensed provider of the Computer Clubhouse model, Youth Connections offers disadvantaged young people opportunities to engage with creative technologies that provide skills that improve learning that enable vulnerable young people to build confidence and develop competencies to assist in engaging with education and employment programs.</p><p><br></p><p>Youth Connections provides educational activities that underpinned by a STEAM to STEM model. That is Science and Technology interpreted through Engineering and the Arts connects to the core curriculum subjects of Science, Technology, Engineering and Mathematics. Specific activities include: Photography, Music making, Electronics, Robotics, Coding, Badging making, Excursions, and recreational activities.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = 'TEI - Community Support';
        p.DEX_Reporter__c = true;
        p.Funder_Program_Name__c = 'Targeted Early Intervention, Youth Connections, TEI - Northern NSW-2071';
        p.Id = 'a132x000000XjtZAAS';
        p.Key_Funder_Contact__c = '0034a0000062Z0zAAE';
        p.Name = 'Youth Connections Clubhouse';
        p.Outlet_Id__c = 33364;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Clubhouse';
        p.RecordTypeId = '0122x0000000HeVAAU';
        p.Services__c = '3;8';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>Counselling services for youth 10-24 years and their parents via individual and group sessions.</p><p>Facilitate the “staying safe” program.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = 'Family and Relationship Services';
        p.DEX_Reporter__c = true;
        p.Funder_Program_Name__c = 'Department of Social Services (DSS)';
        p.Id = 'a132x000000XjteAAC';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Elements';
        p.Outlet_Id__c = 33361;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Elements';
        p.RecordTypeId = '0122x0000000HekAAE';
        p.Services__c = '5;1;2;3;4;8;10;13';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>Provide services to support families, strengthen relationships, improve children’s well-being &amp; increase participation in the community life. </p><p><br></p><p>Objectives are to strengthen family &amp; community functioning and reduce costs of family breakdowns.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'NSW Health (DCJ)';
        p.Id = 'a132x000000XjtjAAC';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Family Referral Service';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Family Referral Service (FRS)';
        p.RecordTypeId = '0122x0000000HepAAE';
        p.Services__c = '5;1;2;3;4;8;10;13;11';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>Early intervention family mental health service to 0 - 18 year old children, young people and their families, and related community groups to improve positive relationships and well-being for youth and their families.</p><p><br></p><p>Deliver community outreach, mental health education and community development activities.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = 'Community Mental Health, Early Intervention for Children';
        p.DEX_Reporter__c = true;
        p.Funder_Program_Name__c = 'Community Mental Health, Early Intervention for Children';
        p.Id = 'a132x000000XjtoAAC';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Mijung Jarjums Kids in Mind';
        p.Outlet_Id__c = 33360;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Mijung Jarjums Kids in Mind';
        p.RecordTypeId = '0122x0000000HeuAAE';
        p.Services__c = '5;1;2;3;4;8;10;13;11';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = true;
        p.Description__c = '<p>Connecting Home - Adult Complex supports young men, women and families who are homeless or at imminent risk of homelessness to: remain safely in their existing housing; find secure, stable housing; or sustain their accommodation once housed</p><p><br></p><p>Practice responses for clients with complex needs recognise the additional, intensive, multi-disciplinary support needed for clients entrenched in homelessness (e.g. long-term rough sleepers) and those with chronic health issues, drug and alcohol related problems and mental health issues</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a132x000000XnuLAAS';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Connecting Home - Adult Complex';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Connecting Home';
        p.RecordTypeId = '0122x0000000HaxAAE';
        p.Services__c = '8';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = true;
        p.Description__c = '<p>Connecting Home Youth Team also includes Northern Youth project which assists young people (16-24 years old) by intervening early to prevent homelessness, or assist people who are already experiencing homelessness to break the cycle of homelessness.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'Department of Communities & Justice (DCJ)';
        p.Id = 'a132x000000XnuQAAS';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Connecting Home - Northern Youth';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Connecting Home';
        p.RecordTypeId = '0122x0000000HaxAAE';
        p.Services__c = null;
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = true;
        p.Description__c = '<p>The Homeless Youth Assistance Program (HYAP) funds non-government service providers to deliver support and accommodation models for unaccompanied children and young people aged 12 to 15 years who are homeless or at risk of homelessness.</p><p><br></p><p>The HYAP aims to reconnect unaccompanied children and young people 12 to 15 years of age with their families or wider support networks, or facilitate transitions to more appropriate long-term supported accommodation.</p><p><br></p><p>The Framework aligns closely with the SHS Practice Guidelines and SHS Service Delivery Framework, albeit with a targeted focus on unaccompanied children and young people who are homeless or at risk of homelessness.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'Department of Communities & Justice (DCJ)';
        p.Id = 'a132x000000XnuRAAS';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Connecting Home - HYAP';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Connecting Home';
        p.RecordTypeId = '0122x0000000HaxAAE';
        p.Services__c = null;
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = true;
        p.Description__c = '<p>Connecting Home Youth Team also includes Northern Youth project which assists young people (16-24 years old) by intervening early to prevent homelessness, or assist people who are already experiencing homelessness to break the cycle of homelessness.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'Department of Communities & Justice (DCJ)';
        p.Id = 'a132x000000XnuVAAS';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Connecting Home - Youth';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Connecting Home';
        p.RecordTypeId = '0122x0000000HaxAAE';
        p.Services__c = null;
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>NOTE: this is only used for recording Internal Referrals. Cases are not to be created for this program.</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000004hRPAAY';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Headspace - Lismore';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIbAAAW';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Headspace';
        p.RecordTypeId = '0124a0000004L2cAAE';
        p.Services__c = '5';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'NSW Department of Communities and Justice';
        p.Id = 'a134a0000004tISAAY';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Opportunity Pathways';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Opportunity Pathways';
        p.RecordTypeId = '0124a0000004L8QAAU';
        p.Services__c = '5;3;215;Case Management;Housing Support;Reverse Marketing;In-house Training Program;Post-Employment;Pre-Employment';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p><span style=\"color: rgb(62, 62, 60);\">NOTE: this is only used for recording Internal Referrals. Cases are not to be created for this program.</span></p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000004iPaAAI';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Headspace - Tweed Heads';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIbAAAW';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Headspace';
        p.RecordTypeId = '0124a0000004L8VAAU';
        p.Services__c = '5';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p>FCiS - not to be confused with FCS, which is the Family Connect &amp; Support program that commenced 01/Jan/2021</p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'Catholic Schools Office';
        p.Id = 'a134a0000004iQEAAY';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Family Connect - Schools';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIbAAAW';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Family Connect - Schools';
        p.RecordTypeId = '0124a0000004L81AAE';
        p.Services__c = '5;99;1;2;4;13;93;12';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to 99 not being set in sandbox.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = true;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000004rrJAAQ';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Getting it Together';
        p.Outlet_Id__c = 33363;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Getting it Together';
        p.RecordTypeId = '0122x0000000KWyAAM';
        p.Services__c = '5;98;99;1;2;3;8;13;152;151;12;154;150;21';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to 99 not being set in sandbox.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = '1597';
        p.DEX_Program_Activity_Name__c = 'Reconnect';
        p.DEX_Reporter__c = true;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000004rr9AAA';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Reconnect';
        p.Outlet_Id__c = 33362;
        p.OwnerId = '0052x000000FIo2AAG';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Reconnect';
        p.RecordTypeId = '0122x0000000KX3AAM';
        p.Services__c = '5;1;2;4;8;10;11;92;93';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000007tmOAAQ';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Standby Response Service';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000002RpohAAC';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Standby Response Service';
        p.RecordTypeId = '0124a0000004NJmAAM';
        p.Services__c = '5;98;99;1;2;3;4;8;10;13;11;92;93;152;151;12;154;150;21;96;215;Case Management;Housing Support;Reverse Marketing;In-house Training Program;Post-Employment;Pre-Employment';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to record typeId not existing.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'Stronger Country Communities Fund (SCCF)';
        p.Id = 'a134a0000005gJpAAI';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Ballina Clubhouse';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000002RpohAAC';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Ballina Clubhouse';
        p.RecordTypeId = '0124a0000004MSOAA2';
        p.Services__c = '98;3;8';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to 98 not being set in sandbox.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = '<p><span style=\"color: rgb(91, 91, 91); font-size: 12px;\">Youth on Track is designed to help teens (10-17 years) who are at risk of long-term involvement in the criminal justice system. We work with young people and their families to identify triggers to offending; helping to identify issues and work through solutions; to reduce risky behaviour and to make positive life choices.</span></p><p><br></p><p><span style=\"color: rgb(91, 91, 91); font-size: 12px; background-color: rgb(255, 255, 255);\">Youth on Track is a NSW Government initiative funded by the The NSW Department of Justice and delivered in the Coffs and Clarence area by Social Futures.</span></p>';
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = 'NSW Department of Justice';
        p.Id = 'a134a0000006EjVAAU';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Youth on Track';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000000FIbAAAW';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Youth on Track';
        p.RecordTypeId = '0124a0000004MoKAAU';
        p.Services__c = '5;99;2;8;10';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to 99 not being set in sandbox.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000007rhmAAA';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Pathfinders FCS';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000002RpohAAC';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Pathfinders FCS';
        p.RecordTypeId = '0124a0000004NJhAAM';
        p.Services__c = '5;98;99;1;2;3;4;8;10;13;11;92;93;152;151;12;154;150;21;96;215;Case Management;Housing Support;Reverse Marketing;In-house Training Program;Post-Employment;Pre-Employment';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to 98 not being set in sandbox.
        //ps.add(p);

        p = new Program__c();
        p.Address_Line_1__c = null;
        p.Address_Line_2__c = null;
        p.AIHW_Reporter__c = false;
        p.Description__c = null;
        p.DEX_Organisation_Activity_Id__c = null;
        p.DEX_Program_Activity_Name__c = null;
        p.DEX_Reporter__c = false;
        p.Funder_Program_Name__c = null;
        p.Id = 'a134a0000006iyTAAQ';
        p.Key_Funder_Contact__c = null;
        p.Name = 'Family Connect & Support';
        p.Outlet_Id__c = null;
        p.OwnerId = '0052x000002RpohAAC';
        p.Postcode__c = null;
        p.Primary_Contact__c = null;
        p.Program_Manager__c = null;
        p.Program_Type__c = 'Family Connect & Support';
        p.RecordTypeId = '0124a0000004N9SAAU';
        p.Services__c = '5;1;3;4;8;10;13;11';
        p.SHS_Organisation_ID__c = null;
        p.SHS_Organisation_Name__c = null;
        p.State__c = null;
        p.Status__c = 'Active';
        p.Suburb__c = null;

        // Removed due to record type not being set in sandbox.
        //ps.add(p);

        return ps;
    }

    public static List<TimeSlot> readTimeSlots()
    {
        List<TimeSlot> tsList = new List<TimeSlot>();
        TimeSlot ts = new TimeSlot();

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKnGAM');
        ts.DayOfWeek = 'Friday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOlCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKsGAM');
        ts.DayOfWeek = 'Monday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOmCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKsGAM');
        ts.DayOfWeek = 'Tuesday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOnCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKsGAM');
        ts.DayOfWeek = 'Wednesday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOoCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKsGAM');
        ts.DayOfWeek = 'Thursday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOpCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKsGAM');
        ts.DayOfWeek = 'Friday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOqCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKnGAM');
        ts.DayOfWeek = 'Monday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOhCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKnGAM');
        ts.DayOfWeek = 'Tuesday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOiCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKnGAM');
        ts.DayOfWeek = 'Wednesday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOjCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        tsList.add(ts);

        ts = new TimeSlot(OperatingHoursId = '0OH2x0000004IKnGAM');
        ts.DayOfWeek = 'Thursday';
        ts.EndTime = Time.newInstance(20, 0, 0, 0);
        ts.Id = '0Gj2x0000004IOkCAM';
        ts.MaxAppointments = 1;
        ts.StartTime = Time.newInstance(6, 0, 0, 0);
        ts.Type = 'Normal';

        return tsList;
    }

    public static List<ServiceTerritory> readServiceTerritories()
    {
        List<ServiceTerritory> sts = new List<ServiceTerritory>();
        ServiceTerritory st = new ServiceTerritory();

        st.City = 'Byron Bay';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OYCA0';
        st.IsActive = true;
        st.Latitude = -28.659218027174344;
        st.LGA__c = null;
        st.LGA_Code__c = '11350';
        st.LGA_Name__c = 'Byron (A)';
        st.Longitude = 153.6156611239789;
        st.Name = 'Byron Bay - Scott Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2481';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120101350';
        st.SLA_Name__c = 'Byron (A)';
        st.State = 'NSW';
        st.Street = '1 Scott Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Tweed Heads';
        st.Country = 'Australia';
        st.Description = '07 5589 8700';
        st.DEX_OutletID__c = 11091;
        st.DEX_OutletName__c = 'Tweed Heads - Wharf Street';
        st.GeocodeAccuracy = 'Address';
        st.Id = '0Hh2x000000L5OdCAK';
        st.IsActive = true;
        st.Latitude = -28.17872194921402;
        st.LGA__c = null;
        st.LGA_Code__c = '17550';
        st.LGA_Name__c = 'Tweed (A)';
        st.Longitude = 153.54054133;
        st.Name = 'Tweed Heads - Warf Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = '07 5589 8700';
        st.PostalCode = '2485';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120057554';
        st.SLA_Name__c = 'Tweed (A) - Tweed-Heads';
        st.State = 'NSW';
        st.Street = '145 Wharf Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Tweed Heads';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Address';
        st.Id = '0Hh2x000000L5OiCAK';
        st.IsActive = true;
        st.Latitude = -28.174417609214096;
        st.LGA__c = null;
        st.LGA_Code__c = '17550';
        st.LGA_Name__c = 'Tweed (A)';
        st.Longitude = 153.54507677;
        st.Name = 'Tweed Heads - Frances Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2485';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120057554';
        st.SLA_Name__c = 'Tweed (A) - Tweed-Heads';
        st.State = 'NSW';
        st.Street = '15 Frances Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Lismore';
        st.Country = 'Australia';
        st.Description = '02 6620 1816';
        st.DEX_OutletID__c = 38704;
        st.DEX_OutletName__c = 'The Clubhouse - Keen Street';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OjCAK';
        st.IsActive = true;
        st.Latitude = -28.809816180973552;
        st.LGA__c = null;
        st.LGA_Code__c = '14850';
        st.LGA_Name__c = 'Lismore (C)';
        st.Longitude = 153.2780071015316;
        st.Name = 'Lismore - Clubhouse';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2480';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '152 Keen Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Lismore';
        st.Country = 'Australia';
        st.Description = '02 6625 0200';
        st.DEX_OutletID__c = 36166;
        st.DEX_OutletName__c = 'Lismore - Carrington Street';
        st.GeocodeAccuracy = 'Address';
        st.Id = '0Hh2x000000L5OkCAK';
        st.IsActive = true;
        st.Latitude = -28.808178299202748;
        st.LGA__c = 'Lismore';
        st.LGA_Code__c = '14850';
        st.LGA_Name__c = 'Lismore (C)';
        st.Longitude = 153.27780518000003;
        st.Name = 'Lismore - Carrington Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = '02 6625 0200';
        st.PostalCode = '2480';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '2A Carrington Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Lismore';
        st.Country = 'Australia';
        st.Description = '02 6620 1816';
        st.DEX_OutletID__c = 2714;
        st.DEX_OutletName__c = 'Lismore - Keen Street';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OnCAK';
        st.IsActive = true;
        st.Latitude = -28.8045279305258;
        st.LGA__c = null;
        st.LGA_Code__c = '14850';
        st.LGA_Name__c = 'Lismore (C)';
        st.Longitude = 153.2816682578279;
        st.Name = 'Lismore - Keen Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = '02 6620 1816';
        st.PostalCode = '2480';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '16 Keen Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Ballina';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = 11086;
        st.DEX_OutletName__c = 'Ballina - River Street';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OoCAK';
        st.IsActive = true;
        st.Latitude = -28.87176918268833;
        st.LGA__c = null;
        st.LGA_Code__c = '10250';
        st.LGA_Name__c = 'Ballina (A)';
        st.Longitude = 153.56362265598577;
        st.Name = 'Ballina - River Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2478';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120100250';
        st.SLA_Name__c = 'Ballina (A)';
        st.State = 'NSW';
        st.Street = '29 River Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Ballina';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OsCAK';
        st.IsActive = true;
        st.Latitude = -28.86843502813097;
        st.LGA__c = null;
        st.LGA_Code__c = '10250';
        st.LGA_Name__c = 'Ballina (A)';
        st.Longitude = 153.56539760325774;
        st.Name = 'Ballina - Swift Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2478';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120100250';
        st.SLA_Name__c = 'Ballina (A)';
        st.State = 'NSW';
        st.Street = '32 Swift Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Murwillumbah';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = 36167;
        st.DEX_OutletName__c = 'Murwillumbah - Nullum Street';
        st.GeocodeAccuracy = 'Street';
        st.Id = '0Hh2x000000L5OtCAK';
        st.IsActive = true;
        st.Latitude = -28.334453445243973;
        st.LGA__c = null;
        st.LGA_Code__c = '17550';
        st.LGA_Name__c = 'Tweed (A)';
        st.Longitude = 153.39220006306064;
        st.Name = 'Murwillumbah - Nullum Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2484';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120107558';
        st.SLA_Name__c = 'Tweed (A) - Pt B';
        st.State = 'NSW';
        st.Street = 'Nullum Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Grafton';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = 2715;
        st.DEX_OutletName__c = 'Grafton - Victoria Street';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5OxCAK';
        st.IsActive = true;
        st.Latitude = -29.69272521522762;
        st.LGA__c = null;
        st.LGA_Code__c = '11730';
        st.LGA_Name__c = 'Clarence Valley (A)';
        st.Longitude = 152.933518376822;
        st.Name = 'Grafton - Victoria Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2460';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '125051737';
        st.SLA_Name__c = 'Clarence Valley (A) - Grafton';
        st.State = 'NSW';
        st.Street = '50 Victoria Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Mullumbimby';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = 11495;
        st.DEX_OutletName__c = 'Mullumbimby - Dalley Street';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5P2CAK';
        st.IsActive = true;
        st.Latitude = -28.551889650665835;
        st.LGA__c = null;
        st.LGA_Code__c = '11350';
        st.LGA_Name__c = 'Byron (A)';
        st.Longitude = 153.4997943065817;
        st.Name = 'Mullumbimby - Dalley Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2482';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '120101350';
        st.SLA_Name__c = 'Byron (A)';
        st.State = 'NSW';
        st.Street = '55 Dalley Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Coffs Harbour';
        st.Country = 'Australia';
        st.Description = 'Level 1 / 45 Little Street';
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh2x000000L5P7CAK';
        st.IsActive = true;
        st.Latitude = -30.29851472983606;
        st.LGA__c = null;
        st.LGA_Code__c = '11800';
        st.LGA_Name__c = 'Coffs Harbour (C)';
        st.Longitude = 153.1127805100829;
        st.Name = 'Coffs Harbour - Little Street';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2450';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = '125011801';
        st.SLA_Name__c = 'Coffs Harbour (C) - Pt A';
        st.State = 'NSW';
        st.Street = '45 Little Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Kempsey';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh4a00000005YUCAY';
        st.IsActive = true;
        st.Latitude = -31.079039781092924;
        st.LGA__c = null;
        st.LGA_Code__c = null;
        st.LGA_Name__c = null;
        st.Longitude = 152.84235066993548;
        st.Name = 'Kempsey - Smith Street';
        st.OperatingHoursId = '0OH4a00000005RMGAY';
        st.Organisation__c = null;
        st.OwnerId = '0052x000002RpohAAC';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2440';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '51 Smith Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Casino';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = 'NRSDC 138 Canterbury St, Casino';
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh4a00000002XYCAY';
        st.IsActive = true;
        st.Latitude = -28.862340095703804;
        st.LGA__c = null;
        st.LGA_Code__c = null;
        st.LGA_Name__c = null;
        st.Longitude = 153.0445822414362;
        st.Name = 'Casino - Canterbury St';
        st.OperatingHoursId = '0OH2x0000004IKnGAM';
        st.Organisation__c = null;
        st.OwnerId = '0052x000000FIo2AAG';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2470';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '138 Canterbury Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Taree';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Address';
        st.Id = '0Hh4a00000005YZCAY';
        st.IsActive = true;
        st.Latitude = -31.91297220915286;
        st.LGA__c = null;
        st.LGA_Code__c = null;
        st.LGA_Name__c = null;
        st.Longitude = 152.46271453;
        st.Name = 'Taree - Victoria Street';
        st.OperatingHoursId = '0OH4a00000005RMGAY';
        st.Organisation__c = null;
        st.OwnerId = '0052x000002RpohAAC';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2430';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '140a Victoria Street';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        st = new ServiceTerritory();
        st.City = 'Coffs Harbour';
        st.Country = 'Australia';
        st.Description = null;
        st.DEX_OutletID__c = null;
        st.DEX_OutletName__c = null;
        st.GeocodeAccuracy = 'Block';
        st.Id = '0Hh4a00000005YeCAI';
        st.IsActive = true;
        st.Latitude = -30.297185354924625;
        st.LGA__c = null;
        st.LGA_Code__c = null;
        st.LGA_Name__c = null;
        st.Longitude = 153.1171991376311;
        st.Name = 'Coffs Harbour - Gordon Street';
        st.OperatingHoursId = '0OH4a00000005RMGAY';
        st.Organisation__c = null;
        st.OwnerId = '0052x000002RpohAAC';
        st.ParentTerritoryId = null;
        st.Phone__c = null;
        st.PostalCode = '2450';
        st.Primary_Contact__c = null;
        st.Site_Contact__c = null;
        st.SLA_Code__c = null;
        st.SLA_Name__c = null;
        st.State = 'NSW';
        st.Street = '26 Gordon St';
        st.TypicalInTerritoryTravelTime = null;

        sts.add(st);

        return sts;
    }

    public static List<Program_Service_Location__c> readProgramServiceLocations()
    {
        List<Program_Service_Location__c> psls = new List<Program_Service_Location__c>();
        Program_Service_Location__c psl = new Program_Service_Location__c();

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtoAAC', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a112x000000gFyWAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtjAAC', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a112x000000gFz0AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtjAAC', Service_Territory__c = '0Hh2x000000L5OxCAK');
        psl.Id = 'a112x000000gFz5AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtjAAC', Service_Territory__c = '0Hh2x000000L5OiCAK');
        psl.Id = 'a112x000000gFzAAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004hRPAAY', Service_Territory__c = '0Hh2x000000L5OkCAK');
        psl.Id = 'a114a0000008wMpAAI';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtZAAS', Service_Territory__c = '0Hh2x000000L5OjCAK');
        psl.Id = 'a114a0000008qOnAAI';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjteAAC', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a0000008qNBAAY';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004iPaAAI', Service_Territory__c = '0Hh2x000000L5OiCAK');
        psl.Id = 'a114a0000008zvGAAQ';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004iQEAAY', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a0000008zyPAAQ';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004tISAAY', Service_Territory__c = '0Hh2x000000L5OdCAK');
        psl.Id = 'a114a0000009WnEAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004tISAAY', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a0000009Wn9AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000007rhmAAA', Service_Territory__c = '0Hh4a00000005YUCAY');
        psl.Id = 'a114a000000BQ3jAAG';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OxCAK');
        psl.Id = 'a114a0000009Up7AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OdCAK');
        psl.Id = 'a114a0000009UpMAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5P2CAK');
        psl.Id = 'a114a0000009UpRAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a0000009Uq0AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OoCAK');
        psl.Id = 'a114a0000009UpvAAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OkCAK');
        psl.Id = 'a114a0000009UpNAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a0000009UpCAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OkCAK');
        psl.Id = 'a114a0000009UpHAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OxCAK');
        psl.Id = 'a114a0000009UpqAAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OtCAK');
        psl.Id = 'a114a0000009UqAAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5P2CAK');
        psl.Id = 'a114a0000009Uq5AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OoCAK');
        psl.Id = 'a114a0000009Up2AAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rrJAAQ', Service_Territory__c = '0Hh2x000000L5OdCAK');
        psl.Id = 'a114a0000009UqFAAU';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000004rr9AAA', Service_Territory__c = '0Hh2x000000L5OtCAK');
        psl.Id = 'a114a0000009UpbAAE';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000005gJpAAI', Service_Territory__c = '0Hh2x000000L5OsCAK');
        psl.Id = 'a114a000000A7TCAA0';
        psl.Primary_Contact__c = '0054a000000LWsHAAW';

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000006EjVAAU', Service_Territory__c = '0Hh2x000000L5P7CAK');
        psl.Id = 'a114a000000APGpAAO';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000006EjVAAU', Service_Territory__c = '0Hh2x000000L5OxCAK');
        psl.Id = 'a114a000000APGkAAO';
        psl.Primary_Contact__c = '0054a000000bMemAAE';

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a132x000000XjtUAAS', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a000000Al7fAAC';
        //psl.Primary_Contact__c = '0054a000000epOtAAI'; // Disabled as id is not a valid user.

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000007rhmAAA', Service_Territory__c = '0Hh4a00000005YeCAI');
        psl.Id = 'a114a000000BQ3yAAG';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000007rhmAAA', Service_Territory__c = '0Hh4a00000005YZCAY');
        psl.Id = 'a114a000000BQ3tAAG';
        psl.Primary_Contact__c = null;

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000006iyTAAQ', Service_Territory__c = '0Hh2x000000L5OiCAK');
        psl.Id = 'a114a000000ArGXAA0';
        psl.Primary_Contact__c = '0052x000002SC2FAAW';

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000006iyTAAQ', Service_Territory__c = '0Hh2x000000L5OxCAK');
        psl.Id = 'a114a000000ArGcAAK';
        psl.Primary_Contact__c = '0052x000002SC2FAAW';

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000006iyTAAQ', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a000000ArGSAA0';
        psl.Primary_Contact__c = '0052x000002SC2FAAW';

        psls.add(psl);

        psl = new Program_Service_Location__c(Program__c = 'a134a0000007tmOAAQ', Service_Territory__c = '0Hh2x000000L5OnCAK');
        psl.Id = 'a114a000000BU1yAAG';
        psl.Primary_Contact__c = '0054a000000h0uVAAQ';

        psls.add(psl);

        return psls;
    }

    public static List<Outcome_Star_Template__c> readOutcomeStarTemplates()
    {
        List<Outcome_Star_Template__c> osts = new List<Outcome_Star_Template__c>();
        Outcome_Star_Template__c ost;

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#FEDBBB';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000000QKCAA2';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = 'At the beginning of the journey, any one of the seven areas can seem like an impossible barrier to getting into work, and you can’t imagine things being any different. You don’t have help or don’t or engage with it, so things are stuck.<br><br>You take a step forward to 2 when you acknowledge concern but you still don’t engage with support when it is offered.';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = 'At this stage you don’t want things to continue as they are and you start accepting help. You don’t yet take the initiative yourself to sort things out but rely on workers to drive things forward. You go along with what they suggest, although you don’t really believe it will make any difference.<br><br>At 3 you sometimes go along with help but sometimes don’t. At 4 you go along with help consistently but don’t yet take the initiative.';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_3_Description__c = 'The next stage is believing and trying. At 5 there is an internal shift towards believing you can change things. You start taking responsibility for moving forward and can see that it’s up to you to make a difference to your life so that you can have a working future.<br><br>At 6 you start to act on that belief and try some new approaches. Often things don’t go well at first and you may find it hard to maintain progress so it can help to have a lot of support.';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Believing and trying';
        ost.Journey_of_Change_Step_4_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_4_Description__c = 'At this stage, you have a realistic sense of what is possible and are learning what works for you and how to make things a reality. It’s a trial and error process – some things go well and some things don’t, so you need support throughout. As you learn, you gain confidence in your ability to find and keep a job and may also be thinking about longer-term career goals.<br><br>At 7 you are starting to make progress in learning skills and building experience, but there are some things you still need to change. By 8 you have been learning for a while and/or your skills and experience are more established but you still need support to stay on track.';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Learning';
        ost.Journey_of_Change_Step_5_Color__c = '#46A5A4';
        ost.Journey_of_Change_Step_5_Description__c = 'At this stage you are increasingly self-reliant until the point where you no longer need support from a professional service to help you with your working life. You may also have clear goals for the future and are taking steps to make these possible.<br><br>At 9 you need occasional support when things get difficult, for example if you have to change jobs. At 10 you can manage well enough without the help of a service and any support you need comes from family or friends.';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Self-reliance';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'Work Star';
        ost.Outline_Color__c = '#D76803';
        ost.OwnerId = '0052x000000FIo2AAG';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'The Outcomes Star for finding work';

        osts.add(ost);

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#B8D87F';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000000fQ3AAI';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = '<p>At the beginning of the journey you may feel <b style="color: rgb(231, 6, 6);">stuck</b>. Although you are far from achieving your full potential</p><p>and may be causing harm to yourself or others, you don’t feel able to discuss the problem or accept help.</p><p><br></p><p>You take a step forward to 2 when you start to feel fed up with how things are. This is the first sign that change is possible. These moments may be fleeting and are not yet consistent enough for you to accept support.</p>';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = '<p>You step forward to 3 when you realise you want things to be different. Change may seem impossible or</p><p>frightening, but you know you don’t want to carry on as you have been doing. At this point you will accept</p><p>help with pressing problems some of the time.</p><p><br></p><p>By 4 you are engaging with the support more consistently but you do not yet take the initiative and rely on</p><p>workers to drive the process of change.</p>';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_3_Description__c = '<p>Then you start <b style="color: rgb(224, 125, 6);">believing </b>that you can make a difference yourself in your life. At 5 you look ahead to how you</p><p>want to be living. You can see that change won’t happen unless you help to make it happen, and you become engaged rather than just going along with other people’s plans.</p><p><br></p><p>At 6, you start to take the initiative and try out new ways of doing things. Sometimes it works, sometimes it</p><p>doesn’t. This stage is a tough place to be and it can help to have plenty of support.</p>';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Believing';
        ost.Journey_of_Change_Step_4_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_4_Description__c = '<p>By 7 you have a sense of what works for you in moving towards your goal. You are becoming more confident</p><p>in yourself and in your ability to achieve your goals, and more consistent in doing things that get you closer to where you want to be. You still need support to keep things going and setbacks can knock you off course.</p><p><br></p><p>By 8, you have achieved your goals and mostly got to where you need to be, but it is hard at times so you still</p><p>need regular support.</p>';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Learning';
        ost.Journey_of_Change_Step_5_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_5_Description__c = '<p>As you learn, you gradually become more self-reliant. Your new ways of doing things start to feel natural or automatic. Most of the time you can maintain the changes on your own without support but at times of crisis you might slip back. At 9, it may be helpful to have some support to help you recognise any danger signs and take action if necessary.</p><p><br></p><p>At 10, you are at the point where you can manage without outside help.</p>';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Self-reliance';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'Homelessness Star';
        ost.Outline_Color__c = '#6C902C';
        ost.OwnerId = '0052x000000FIbAAAW';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'The Star for people with housing and other needs';

        osts.add(ost);

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#BFE6F5';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000001AyOAAU';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = '<p><span style="font-size: medium; color: rgb(0, 0, 0);">At the red stage the young person is stuck and not able to live independently. They may be breaking rules or putting themselves or others in danger, and they may be at risk of eviction. They may not believe they can achieve anything with their life or not know how to begin. At this stage no one is offering support, or support is on offer but the young person won’t accept it. Perhaps they don’t see the point, or feel their problems are too big to cope with. Whatever the reason, things are </span><span style="font-size: medium; color: rgb(255, 0, 0);">stuck.</span></p>';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = '<p><span style="color: rgb(0, 0, 0); font-size: medium;">The first step forward happens when you start </span><span style="color: rgb(255, 132, 0); font-size: medium;">accepting help.</span><span style="color: rgb(0, 0, 0); font-size: medium;"> This is the orange stage. It means someone is helping you talk about what is going on and what support you need. If you need urgent help, it is being provided, even if there isn’t much visible change. At this stage the worker or other professionals are likely to be driving change, with you going along with it but not yet taking the initiative.</span></p>';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_3_Description__c = '<p><span style="color: rgb(0, 0, 0); font-size: medium;">The yellow stage is when you start </span><span style="color: rgb(255, 219, 59); font-size: medium;">trying to sort things out </span><span style="color: rgb(0, 0, 0); font-size: medium;">by taking the initiative to make positive changes. This is often difficult and lots of things you try may not work, so your motivation and confidence may be knocked. You may give up quickly without support to keep going and keep trying new approaches.</span></p>';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Trying to sort things out';
        ost.Journey_of_Change_Step_4_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_4_Description__c = '<p><span style="color: rgb(0, 0, 0); font-size: medium;">At the green stage you are </span><span style="color: rgb(57, 166, 70); font-size: medium;">getting there with support.</span><span style="color: rgb(0, 0, 0); font-size: medium;"> You are discovering strategies that work for you and making real changes in how you feel about yourself and relate to other people. You are taking responsibility for your actions and want to create a better future, but still need support from a service or at home to maintain behaviours and feelings.</span></p>';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Getting there with support';
        ost.Journey_of_Change_Step_5_Color__c = '#46A5A4';
        ost.Journey_of_Change_Step_5_Description__c = '<p><span style="color: rgb(0, 0, 0); font-size: medium;">The blue stage is when you are </span><span style="color: rgb(42, 218, 197); font-size: medium;">independent.</span><span style="color: rgb(0, 0, 0); font-size: medium;"> You are able to look after yourself, your home and your money without support from a service. You are coping with whatever turns up and can mostly deal with crises, drawing on your own support networks as necessary. When things go wrong you can bounce back. This isn’t the end of your journey, but for now you have what you need.</span></p>';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Independent';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'Young Person Star';
        ost.Outline_Color__c = '#99D7EE';
        ost.OwnerId = '0052x000000FIo2AAG';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'The outcome star for young people moving into independent living';

        osts.add(ost);

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#BBDDA8';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000000Tz4AAE';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = '<p>Others are concerned about your children, or one or some of your children. Perhaps they are a long way</p><p>behind other children in their development, their health is poor or they have problems with their behaviour. At this stage, you aren’t aware of your children’s needs or aren’t acknowledging them or doing anything to change the situation, so things are <b style="color: rgb(244, 17, 17);">stuck</b>. Perhaps other things are taking your attention or your own needs are so great that you can’t meet your children’s needs. Maybe you are really worried but don’t know what to do. You don’t want others involved and may feel criticised or afraid of what may happen if you talk about the problems.</p><p><br></p><p>You take a step forward to 2 when you have moments of acknowledging difficulty or concern and perhaps briefly open up to someone about it, but this is short-lived and not enough to make change possible.</p>';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = '<p>Your children are not developing as well as they could or have problems with their behaviour or poor</p><p>attendance at school but you are aware of and acknowledge the problems. You may feel helpless, guilty, angry or resentful – or all of these – but this is a positive place to be because change is possible. You talk about your concerns and go along with some help when things are organised for you or because you feel you have to co-operate. For example, you may attend a clinic or support service if someone arranges it (and perhaps even takes you) but then you don’t follow through on their advice or take the initiative for yourself to improve things for your family.</p><p><br></p><p>At 3 sometimes you go along with support and sometimes you don’t. You take a step forward to 4 when you go along with support more consistently but the initiative is from workers at this stage.</p>';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_3_Description__c = '<p>From 5 you recognise that it is up to you to improve things for your children and to start to take more</p><p>responsibility. You take the initiative in trying new ways to address your children’s needs and dealing with</p><p>problems but probably don’t feel confident and find it difficult.</p><p><br></p><p>Sometimes you do things in a positive and skilful way but at other times you don’t manage to. Your children may feel unsettled by the changes or resist them, so perhaps their behaviour gets worse and neither you nor your children are feeling the benefits of your efforts yet. This is a difficult place to be and it is easy to give up so you may need lots of support.</p><p><br></p><p>At 5 you are <b style="color: rgb(237, 211, 18);">trying </b>new things for yourself but may feel tentative and give up quickly. You reach 6 when you stick to new ways of doing things for longer. When things go well you may find glimmers of hope that help keep you going.</p>';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Trying';
        ost.Journey_of_Change_Step_4_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_4_Description__c = '<p>You are learning from experience what works and what doesn’t work with your children and you are managing to be reasonably consistent. Your children are benefiting from this. More of your own needs are met so you are more able to give to your children and you are thinking about the whole family and how to make things work for everyone. However, there are some things that are not working so well; perhaps you manage better with one child than with another, or you find it hard to cope when there is a crisis or lots of demands come at once. </p><p><br></p><p>By 8, you are parenting well enough for your children to do well, but you still need ongoing support and could slip back if this is withdrawn too soon.</p>';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Finding what works';
        ost.Journey_of_Change_Step_5_Color__c = '#46A5A4';
        ost.Journey_of_Change_Step_5_Description__c = '<p>Your children can do well in your care and so you do not need the support of a specialist service. You put your children first when necessary but you also find ways to meet your own needs. This means you have the sense of well-being and balance you need to be a good-enough parent and cope with the ups and downs of family life most of the time. Although for most parents this will not be the end of the journey, you are able to reflect on what you have learnt and continue to improve your parenting and learn new skills as your children get older, without professional input. You may have become a wiser, stronger person as a result of the difficulties you have experienced and be an example and an inspiration to others.</p><p><br></p><p>At 9 you need occasional support and at 10 you are parenting well enough without support from a service.</p>';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Effective Parenting';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'Family Star';
        ost.Outline_Color__c = '#579038';
        ost.OwnerId = '0052x000000FIbAAAW';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'The Outcomes Star for parents';

        osts.add(ost);

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#99D4BD';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000000Z2RAAU';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = '<p>Others are concerned about one or more of your children – perhaps about their behaviour, health or development – but you aren’t acknowledging problems or doing anything to change the situation. Perhaps your own needs or other things are taking your attention so you can’t meet your children’s needs. Maybe you are really worried but don’t know what to do. Maybe you don’t want others involved or feel criticised or afraid to talk about problems. </p><p><br></p><p>At 2 you have moments of acknowledging difficulty or concern and briefly open up to someone about it, but you do not accept help so things are still stuck.</p>';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = '<p>Your children have problems with their behaviour, development or school attendance and at this stage you go along with help when things are organised for you. Perhaps you feel helpless, angry or that you have to co-operate, but this stage is a positive place to be because you are engaged and change is possible. At 3 sometimes you go along with support and sometimes you don’t. </p><p><br></p><p>You take a step forward to 4 when you go along with support more consistently but the initiative is from workers at this stage.</p>';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_3_Description__c = '<p>You recognise that it is up to you to improve things for your children and to start to take more responsibility. You take the initiative to try new ways to address your children’s needs and deal with problems. Sometimes this goes well but often it doesn’t and your children resist the changes so things may seem worse for a while. This is a difficult place to be and it is easy to give up so you may need lots of support. </p><p><br></p><p>At 5 you may feel tentative and give up quickly. At 6 you stick to new ways of doing things for longer.</p>';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Trying';
        ost.Journey_of_Change_Step_4_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_4_Description__c = '<p>You are learning from experience what works and what doesn’t work with your children and they are benefiting from this. More of your own needs are met so you are more able to give to your children and you are thinking about the whole family and how to make things work for everyone. However, there are some things that are not working so well or where you need professional support. </p><p><br></p><p>By 8, you are parenting well enough but you still need ongoing support and could slip back if this is withdrawn too soon.</p>';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Finding what works';
        ost.Journey_of_Change_Step_5_Color__c = '#46A5A4';
        ost.Journey_of_Change_Step_5_Description__c = '<p>Your children can do well in your care and so you do not need the support of a specialist service. You put your hildren first when necessary but you also find ways to meet your own needs so you can be a good-enough parent and cope with the ups and downs of family life most of the time. Although for most parents this will not be the end of the journey, you are able to reflect on what you have learnt and continue to improve your parenting and learn new skills as your children get older, without professional input. </p><p><br></p><p>At 9 you need occasional support and at 10 you are parenting well enough without support from a service.</p>';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Effective parenting';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'Family Star Plus';
        ost.Outline_Color__c = '#4FB58E';
        ost.OwnerId = '0052x000000FIbAAAW';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'An Outcomes Star for parents';

        osts.add(ost);

        ost = new Outcome_Star_Template__c();
        ost.Active__c = true;
        ost.Background_Color__c = '#FFE568';
        ost.Dex_Score_Category__c = 'CIRCUMSTANCES';
        ost.Id = 'a1f4a0000000YlPAAU';
        ost.Journey_of_Change_Step_1_Color__c = '#C6463f';
        ost.Journey_of_Change_Step_1_Description__c = '<p>At the red stage the child is stuck and their well-being is at risk. They may be acting out, withdrawn, confused. They may not know what to do or how they are feeling. The key point at this stage is that no one is offering support or support is on offer but the child won’t accept it. Perhaps they don’t see a problem, or it might all be too big to cope with. Perhaps the help being offered is not the right sort of help, or they don’t like or trust the people offering it. Whatever the reason, things are <b style="color: rgb(228, 21, 21);">stuck</b>.</p>';
        ost.Journey_of_Change_Step_1_Short_Name__c = 'Stuck';
        ost.Journey_of_Change_Step_10_Color__c = null;
        ost.Journey_of_Change_Step_10_Description__c = null;
        ost.Journey_of_Change_Step_10_Short_Name__c = null;
        ost.Journey_of_Change_Step_2_Color__c = '#Df7E2C';
        ost.Journey_of_Change_Step_2_Description__c = '<p>The first step forward happens when the child starts<b style="color: rgb(231, 151, 22);"> accepting help</b>. This is the orange stage and means someone is helping them talk about what is going on and what support they need. If they need urgent help, it is being provided, even if there isn’t much visible change yet. The child may be glad of support or may not want it, but will go along with it – perhaps because things have become so difficult that there is no other option open to them. They may feel anxious and upset about the situation, or lack confidence that there can be a positive future, but now they are not facing it alone.</p>';
        ost.Journey_of_Change_Step_2_Short_Name__c = 'Accepting help';
        ost.Journey_of_Change_Step_3_Color__c = '#E7AF2E';
        ost.Journey_of_Change_Step_3_Description__c = '<p>The yellow stage is when the child and perhaps others are <b style="color: rgb(225, 228, 42);">trying </b>new ways of doing things. These are often difficult and lots of things the child tries may not work. However, they are working with someone to find ways to make life better and easier. Other people may be making things better as well, but it is the child’s efforts that count.</p>';
        ost.Journey_of_Change_Step_3_Short_Name__c = 'Trying';
        ost.Journey_of_Change_Step_4_Color__c = '#A8C52E';
        ost.Journey_of_Change_Step_4_Description__c = '<p>At the green step the child is <b style="color: rgb(59, 218, 41);">finding what works</b>. They are discovering strategies that work for them and making some real changes in how they feel about themselves and relate to other people. Someone starting their journey at this stage still needs support from a service or at home to maintain behaviours and feelings.</p>';
        ost.Journey_of_Change_Step_4_Short_Name__c = 'Finding what works';
        ost.Journey_of_Change_Step_5_Color__c = '#46A5A4';
        ost.Journey_of_Change_Step_5_Description__c = '<p>The blue stage is when the child is <b style="color: rgb(30, 176, 234);">resilient</b>. They are coping with whatever turns up and are able to express their feelings in a way that is appropriate to their age. When things go wrong they can bounce back and find the support they need to make themselves feel better. This isn’t the end of the child’s journey, but you can be confident that for now the child has what they need without additional specialist support.</p>';
        ost.Journey_of_Change_Step_5_Short_Name__c = 'Resilient';
        ost.Journey_of_Change_Step_6_Color__c = null;
        ost.Journey_of_Change_Step_6_Description__c = null;
        ost.Journey_of_Change_Step_6_Short_Name__c = null;
        ost.Journey_of_Change_Step_7_Color__c = null;
        ost.Journey_of_Change_Step_7_Description__c = null;
        ost.Journey_of_Change_Step_7_Short_Name__c = null;
        ost.Journey_of_Change_Step_8_Color__c = null;
        ost.Journey_of_Change_Step_8_Description__c = null;
        ost.Journey_of_Change_Step_8_Short_Name__c = null;
        ost.Journey_of_Change_Step_9_Color__c = null;
        ost.Journey_of_Change_Step_9_Description__c = null;
        ost.Journey_of_Change_Step_9_Short_Name__c = null;
        ost.Name = 'My Star';
        ost.Outline_Color__c = '#F56E1B';
        ost.OwnerId = '0052x000000FIbAAAW';
        ost.RecordTypeId = '0124a0000004LzTAAU';
        ost.Short_Description__c = 'The Outcomes Star for children and young people';

        osts.add(ost);

        return osts;
    }

    public static List<Outcome_Area_Template__c> readOutcomeAreaTemplates()
    {
        List<Outcome_Area_Template__c> oats = new List<Outcome_Area_Template__c>();
        Outcome_Area_Template__c oat;

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FG6IAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>One or more of these applies to you:\n\t<ul><li>You are at risk of losing your tenancy or home</li><li>You don’t have a supportive routine in normal working hours</li><li>You have family problems that are taking all your time</li><li>A relationship is affecting your ability to function</li><li>A problem with drugs or alcohol affects your ability to work</li><li>You have serious financial problems or mounting debts</li></ul>\n\t</li><li>Choose 1 if you have no support with this or don’t accept help. Choose 2 if you sometimes acknowledge the lack of stability in your life but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are accepting help and acting on suggestions, though you don’t believe it will really make a difference or take the initiative to sort out issues for yourself</li><li>Choose 3 if you occasionally go along with help. Choose 4 if you go along with help consistently</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you believe you can create enough stability in your life to have space and time for work and are motivated to make this a reality</li><li>At 6 you are putting that belief into action, for example, taking the initiative to deal with debt or housing issues, getting the right benefits, or addressing drug or alcohol use or a problematic relationship, but you find it difficult and can slip back without help and encouragement</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are finding how to make time in your life for work and to have a stable weekday routine, but need support to keep on track</li><li>By 8 you are not at risk of eviction or domestic abuse and if you have debts, you are getting them under control. You are receiving any benefits you are entitled to. If drugs or alcohol have been a problem, you have addressed this, with support</li><li>Choose 7 if this learning is still quite new and there are still some issues to be addressed. Choose 8 if there are no significant issues but you need support to maintain a stable lifestyle</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>Your life, home and finances are reasonably stable and your weekday routine supports you in working</li><li>You can mostly handle crises at home without your work being affected</li><li>Any use of alcohol or drugs doesn’t affect your ability to work</li><li>Choose 9 if you need occasional support in this area. Choose 10 if your life is stable enough to be in work without professional support and any support you need comes from family or friends</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 3–4 you accept help with sorting out pressing problems but do not take the initiative</li><li>At 6 you start trying to sort out problems for yourself, with support</li><li>By 8 you are not at risk of eviction or domestic abuse, are receiving the right benefits, and any debts you have are not getting any worse</li></ul>';
        oat.Long_Description__c = 'This scale is about having enough stability in your life to be able to work. It covers insecure housing, debt or benefit problems, family and relationship troubles, domestic abuse or drug or alcohol misuse – anything that gets in the way of holding down a job.';
        oat.Name = '4. Stability';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I’m making progress';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Finances, housing, family, relationships, drug and alcohol misuse';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FG6XAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You have a problem with your physical or mental health, mobility or emotional well-being that is preventing you from working</li><li>Perhaps you feel too stressed, anxious or depressed to cope with finding a job or working</li><li>Choose 1 if you have no support with this or don’t accept help. Choose 2 if you sometimes acknowledge problems with your well-being but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are talking to someone and accepting support or treatment for serious issues, though you don’t believe things can change</li><li>Choose 3 if you occasionally allow others to help. Choose 4 if you go along with help consistently but still rely on others to take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you have the motivation to improve your health and well-being in order to be able to cope with work</li><li>At 6 you are putting that belief into action, for example by taking medication, trying new coping techniques or going to counselling or a support group, but it’s early days</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are learning how to look after your health and well-being but need support to keep on track</li><li>If you experience a lot of stress, you are learning strategies to deal with this and developing confidence and self-esteem if this was an issue</li><li>Choose 7 if you have just started to manage your health and well-being. Choose 8 if you can mostly do this well enough to be able to work but need support to maintain it</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>You take care of your health and well-being well enough not to interfere with work</li><li>You are resilient enough to cope with working life and with most of the difficulties you come across at work</li><li>Choose 9 if you need occasional support in this area. Choose 10 if you look after your well-being without professional support, and any help you need comes from family or friends</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently go along with support and treatment for any serious health and wellbeing issues</li><li>At 6 you take some initiative to address physical, mental or emotional health issues that prevent you working</li><li>By 8 you have strategies to look after your health and wellbeing but need support in some areas</li></ul>';
        oat.Long_Description__c = 'This scale is about managing your health, well-being, and any health condition or disability well enough to be able to cope with work. It includes managing mental or emotional health issues such as stress, anxiety and depression, and building up confidence and self-esteem if this is a barrier to work. The scale assumes you don’t receive disability or sickness benefit for being unable to work, or that you are choosing to seek work anyway.';
        oat.Name = '7. Health and well-being';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I’m making progress';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Health and well-being, stress, anxiety and depression, confidence and self-esteem';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Employment';
        oat.Id = 'a154a000000FG63AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You don’t have the necessary skills or experience to get a job, perhaps because you have never done any related work or training or because the skills you have are no longer needed</li><li>You may need training for the job you want but can’t afford it or there are other barriers</li><li>Choose 1 if you have no support or don’t engage with help. Choose 2 if you sometimes acknowledge your lack of job skills or experience but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'I don’t have any relevant skills or experience for work. I don’t have help or don’t accept it';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are accepting help with this and will go along with some suggestions if they are reasonably easy</li><li>Choose 3 if you occasionally allow others to help. Choose 4 if you go along with help consistently but still rely on others to take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'I don’t have any relevant skills or experience for work but I’m going along with help for this';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you are motivated and believe you can develop your job-related skills and experience, but you may feel unsure about the best way to go about it</li><li>At 6 you are taking steps to develop your job-related skills or experience, and may have begun training or volunteering, but it’s early days</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'I believe it’s possible to get the skills and experience I need and am taking steps to address this';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are building up your job skills, experience and qualifications to the right level for the work you want, but need support to stay on track</li><li>You may be well established in a training or volunteering position, or in work on a trial or temporary basis</li><li>Choose 7 if you have recently started to build useful job skills and experience. Choose 8 if you have been doing this longer but still need better skills and/or experience to get the kind of work you are looking for</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'I’m gaining new skills or experience for work, with support';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>Your job skills, experience and qualifications are good enough for the work you are looking for now. If you have longer-term ambitions for another role, you are continuing to develop your skills and experience</li><li>You have skills that are in demand and are confident you can learn new skills if required</li><li>Choose 9 if you need occasional support in this area. Choose 10 if you have good enough skills and experience and can continue to develop your skills without support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'I have good enough job skills and experience for my area of work';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 6 you are taking the initiative to acquire or further develop job skills or experience</li><li>At 8 you have built some skills and/or experience but some aspects need to improve for the work you want</li><li>At 10 you have the job skills and experience you need for now and can continue to develop them for the future</li></ul>';
        oat.Long_Description__c = 'This scale is about developing the skills, experience and qualifications necessary for the work you want. It covers acquiring skills that are in demand and that can be transferred between workplaces. If you aspire to another role in the future, it’s also about developing skills and qualifications that will allow you to progress.';
        oat.Name = '1. Job skills and experience';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, with occasional support';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, but still some gaps';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, that’s me';
        oat.Short_Description__c = 'Job-specific and transferable skills, qualifications, training, volunteering, learning at work';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000FG6DAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You are not looking for work in a meaningful way</li><li>You don’t know how to go about getting a job or seeking out new opportunities, or you don’t feel able to</li><li>Choose 1 if you have no support with job-search skills or don’t engage with help. Choose 2 if you sometimes acknowledge<br>\tyour lack of job-search skills but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are talking about problems with finding work and acting on suggestions, though you don’t believe they will<br>\tmake a difference</li><li>Choose 3 if you occasionally engage with support. Choose 4 if you go along with help consistently but don’t yet take the<br>\tinitiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you are motivated to learn one or more of the skills you need to find and get a job, for example, writing a CV, researching opportunities, filling in application forms or presenting yourself well at interviews</li><li>At 6 you are taking steps to acquire these skills but it’s early days and you may lack confidence</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are improving your job-search skills and gaining in confidence, but still need support to practise your skills</li><li>You are learning how to research opportunities, including online, and are able to approach employers for more information</li><li>You are improving your skills in applying for jobs and/or learning how to present yourself well in interviews</li><li>Choose 7 if it’s early days. Choose 8 if you have used your job-search skills for a while but need support in some areas</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>You have the skills to identify and move between suitable jobs</li><li>You can present yourself well enough on paper, on the phone and in person to get the type of job you are looking for</li><li>Choose 9 if you need occasional professional support in this area. Choose 10 if your job-search skills are good enough and<br>\tyou can continue to improve them as needed without professional help</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 1–5 you are unlikely to be effective in looking for work, though from 3 some of your skills will improve through going along with support</li><li>From 6 you start trying to sort out problems for yourself, with support, and are increasingly effective</li><li>At 10 you can identify suitable jobs, research them and apply for them effectively on your own</li></ul>';
        oat.Long_Description__c = 'This scale is about how well you can identify and apply for suitable jobs. It covers researching opportunities, including online opportunities, confidence on the phone, writing a CV, filling in application forms and presenting yourself well at interviews.';
        oat.Name = '3. Job-search skills';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I’m making progress';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Researching opportunities, applying for jobs, presenting yourself well';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FG68AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You don’t think you will ever get any kind of work. Perhaps you don’t think you have enough to offer or feel the barriers are too great because of your age, lack of work experience, a criminal record or other reasons</li><li>You may not have any idea of what you want to do or only have highly unrealistic ideas</li><li>Choose 1 if you have no support with this or don’t engage with help. Choose 2 if you sometimes acknowledge problems with aspiration and motivation but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you listen to ideas about work and/or talk about your current lack of motivation and go along with some suggestions</li><li>Choose 3 if you sometimes engage with support and attend appointments but often don’t. Choose 4 if you go along with help consistently but don’t take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you feel motivated, see a working future as a realistic possibility and know it’s up to you, but you have not yet taken steps to put that belief into action</li><li>At 6 you are trying to research and plan what you would like to do and how to achieve it, but you are not yet clear about this and may have unrealistic aspirations</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are developing a clear idea of what you would like to do now, and perhaps also in the future, and are building confidence in your ability to achieve it</li><li>Your aspirations are realistic for now, and you may be developing more stretching ambitions for the future</li><li>Choose 7 if you are just starting to gain confidence. Choose 8 if it’s more established but you need support to stay on track</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>You have the motivation to get work, to keep in work and to do well</li><li>You may also be motivated to progress to another type of role or a different kind of work in the future and are taking steps towards this</li><li>Your ambitions are realistic</li><li>Choose 9 if you need occasional support in this area. Choose 10 if you are able to maintain your motivation well enough without professional support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 1–4 you are not motivated to find work, so the worker drives the process</li><li>At 5 you start to see a working future as a realistic possibility</li><li>By 8 you have realistic aspirations for the work you want but need support to maintain your motivation</li></ul>';
        oat.Long_Description__c = 'This scale is about knowing what work you would like to do and having the motivation to make it possible. It’s about having realistic goals for the short term but also covers any longer-term aspirations for the type of work you would like to move towards in the future.';
        oat.Name = '2. Aspiration and motivation';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I believe I can work';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to feel hopeful';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, but still some gaps';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Wanting to work, widening scope, raising ambition, feeling confident, being realistic';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Age Appropriate Development';
        oat.Id = 'a154a000000FG6NAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You speak little or no English, or you have problems with literacy, maths or using a computer</li><li>You can’t get a job or training because of this or you are reluctant to try</li><li>Choose 1 if you have no support with basic skills or don’t engage with help. Choose 2 if you sometimes acknowledge difficulties with basic skills but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are accepting help or advice and going along with some suggestions, though you don’t really believe you can master the skills you need</li><li>Choose 3 if you occasionally accept help. Choose 4 if you consistently go along with support when things are organised for you but don’t yet take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you are motivated and believe you can improve your English, literacy or maths or learn to use a computer but have not yet put that belief into action. Perhaps you are unsure of the first steps</li><li>At 6 you are taking the initiative and learning the basic skills you need. Perhaps you have recently started a course or are working harder on a course you have been attending, but it’s early days</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You have found ways to learn basic skills that are working for you</li><li>Choose 7 if you are learning but need to significantly improve one or more basic skills. Choose 8 if your basic skills are mostly OK but you need to develop further to reach the level you need</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>Your English, literacy, maths or computer knowledge are good enough for the type of work you are realistically aiming for</li><li>Choose 9 if you need occasional support with basic skills. Choose 10 if you keep up your basic skills on your own and can improve them as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently go along with support with at least one basic skill area</li><li>From 6 you are learning and practising skills and increasing the number of skills you can manage</li><li>At 10 your basic skills are good enough for the work you aspire to, though you may still want to improve them further by yourself</li></ul>';
        oat.Long_Description__c = 'This scale is about having the basic skills in English, reading, maths and computers to qualify for an apprenticeship or training or to look for and apply for a job. It also covers having a high enough level of basic skills to be able to do the kind of work you want.';
        oat.Name = '5. Basic skills';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I’m making progress';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'English, literacy, numeracy, IT and using computers';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000QKCAA2');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000FG6SAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>You can’t get or keep a job because of one or more of the following:</li><li>You don’t arrive on time or don’t dress appropriately\n\t<ul><li>People criticise your behaviour or say you use inappropriate language or don’t fit in well enough at work</li><li>You don’t accept being told what to do or other rules or demands of the workplace</li></ul>\n\t</li><li>Choose 1 if you have no support with this or don’t accept help. Choose 2 if you sometimes acknowledge your lack of skills for a workplace but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>As for 1-2, but you are accepting help with some key barriers to work such as how to present yourself, being on time for appointments and going along with basic rules</li><li>Choose 3 if you sometimes go along with help or advice but often don’t. Choose 4 if you go along with help consistently but don’t really believe things can change and don’t take the initiative yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>At 5 you feel motivated to develop the skills you need in a workplace or improve your social skills in order to get and/or keep a job, but may not know what to do</li><li>At 6 you are putting this belief into action, for example by arriving on time for appointments, dressing appropriately or trying new ways to relate to people</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing and trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>You are finding ways to meet the expectations of your chosen workplace and to get on with people in work situations</li><li>You are learning to work better as part of a team, but need support when difficulties arise</li><li>Choose 7 if this learning is quite new. Choose 8 if you have been learning for a while and/or mostly have the skills you require but you need support to keep going</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>You have timekeeping and self-presentation skills and can meet any other expectations for your chosen workplace</li><li>You can work effectively enough with others or as part of a team, follow instructions and/or deal with difficulties as needed without professional support</li><li>Choose 9 if you need occasional support in this area. Choose 10 if your skills are good enough for your workplace and you can continue to improve on your own as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 6 if not before you mostly attend appointments on time, dress appropriately for work and your behaviour doesn’t cause major problems</li><li>10 doesn’t mean everything is perfect but you can manage difficulties and continue to improve for yourself</li></ul>';
        oat.Long_Description__c = 'This scale is about how you meet expectations in a work environment. It covers being on time, wearing the right clothes and behaving appropriately at work. It’s also about how you get on with people and the social skills you need for your type of work, which may include taking instructions, accepting criticism and/or working well within a team.';
        oat.Name = '6. Workplace and social skills';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That’s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that’s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, but it’s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I’m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but it’s early days';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I’m making progress';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Presentation, timekeeping, behaviour at work, getting on with people, working in a team';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000FW66AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>People say I am neglecting my children’s health. I don’t want to talk about it</b></p><ul><li>You don’t take your children to the doctor or dentist, except in emergencies</li><li>Your children don’t eat healthy food, have too little exercise or sleep, and may be obese, under-nourished or at risk of health problems later. If you have a baby you don’t know what is needed for healthy development. If you have teenagers, they may be taking risks with their health. You may also be neglecting your own health</li><li>Choose 1 if you don’t see this as a problem.</li><li>Choose 2 if you have moments of concern over your children’s health but don’t accept support so there is no change</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I know I need to do more to look after my children’s health</b></p><ul><li>The problems at this stage are similar to 1-2. Your children’s lifestyle is not healthy but you recognise there are issues and go along with some support</li><li>Choose 3 if you occasionally allow others to help.</li><li>Choose 4 if you go along with help more consistently but still rely on others to take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I try to do things to make sure my children are healthy but it’s hard</b></p><ul><li>You take your children for some routine checks but don’t always follow advice. If they are ill you do something about it but are not always sure it’s the right thing</li><li>You may be trying to introduce more healthy food and exercise or ensure healthy development but it often doesn’t last long</li><li>Choose 5 if you have just started trying new things for yourself or give up easily.</li><li>Choose 6 if you have been doing this for a while or can keep it up a bit longer</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am finding ways of building a healthy lifestyle for my children</b></p><ul><li>You are finding ways to introduce healthy food, exercise or bedtime routines. You may be finding it works best if you do these things, too</li><li>If you have a baby, you are learning how to give it the best start in life. You are teaching older children to take care of their health, including sexual health</li><li>You look after your children when they are unwell and if any of your children has a disability or health condition, you are learning ways of managing it</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children have what they need to be healthy but you need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children have a healthy lifestyle and receive any medical treatment they need</b></p><ul><li>You look after your children’s health, including treating minor problems at home</li><li>You and your children mostly have enough healthy food, sleep and exercise</li><li>You encourage older children to take responsibility for their health, including sexual health. If you have a baby you are giving it a healthy start in life. If any of your children has a disability or health condition, you keep them as healthy as possible</li><li>Choose 9 if you need occasional support to look after your children’s health.</li><li>Choose 10 if you look after your children’s health</li><li>well enough without support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 things are not getting worse and you mostly attend appointments</li><li>From 5 you are taking more responsibility for your family’s health</li><li>By 8 your children have what they need to be healthy and any health problems are being addressed, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about how well you are looking after your children’s physical health. It is about doctors, dentists and</p><p>treatment when they have health problems, plus things that build good health, such as enough healthy food, regular exercise and sleep. For babies it covers breastfeeding where possible and positive weaning for a healthy start in life. For older children, it is about helping them take responsibility for their own health.</p>';
        oat.Name = '1. Physical Health';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Doctor, dentist, healthy lifestyle, early development, managing any disabilities';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Housing';
        oat.Id = 'a154a000000FX2KAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 I don’t look after myself well. Occasionally I worry about that</b></p><ul><li>As for 1 except you occasionally discuss problems with some aspects of self-care – but if help is offered you do not accept it</li></ul><p><br></p><p><b>1 I don’t keep myself warm, clean and fed, but I don’t want to talk about it</b></p><ul><li>You are not able to keep yourself warm, fed, safe or clean, and you may neglect yourself to the point where other people keep away from you or you harm yourself</li><li>You do not engage in discussion with workers about self-care</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 If others can help me look after myself better, I’ll go along with it</b></p><ul><li>You consistently accept help with self-care</li><li>When you have support, your self-care standards improve, for example, you may clean your room or eat</li><li>more regular meals, but you don’t keep it up on your own</li></ul><p><br></p><p><b>3 I don’t want to live like this any more – I need help</b></p><ul><li>You sometimes agree to let a worker help you address issues, such as fitting a lock on a door if you’re in a flat, or having a shower and putting on fresh clothes</li><li>You go along with some keyworker suggestions, but this is patchy</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am doing some things to look after my home for myself</b></p><ul><li>You are doing more for yourself without prompting, such as laundry, cleaning or cooking, and there are no concerns about your personal self-care</li><li>There are still problem areas, perhaps because you lack skills or motivation</li></ul><p><br></p><p><b>5 I want to be able to do more for myself</b></p><ul><li>You know that cleanliness, diet and other aspects of self-care are important</li><li>You want to do more for yourself, though you may be unsure how to go about this</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I can look after myself and my home well enough but need support to keep it going</b></p><ul><li>You have all the necessary living skills to keep yourself warm and fed, and where you live clean and tidy enough, but you need support so that you don’t slip back</li><li>Maybe you are fine with most of these skills but need help with one or two</li></ul><p><br></p><p><b>7 I’m building my living skills</b></p><ul><li>You do your laundry and some cleaning or cooking without prompting</li><li>You feel better and your motivation is increasing as a result of positive choices</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I can look after my home and myself well without outside help</b></p><ul><li>You have all the necessary living skills to keep yourself warm and fed, and where you live clean and tidy enough without support – you notice if you let things go</li><li>You may not need to use all these skills just now but you know you have them</li></ul><p><br></p><p><b>9 I can look after my home and myself well, with occasional help</b></p><ul><li>You take care of yourself well but you may let things go when life is difficult and need help to get back on track</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 3 things are improving</li><li>You have reasonable skills for basic cooking and cleaning by 6, if not before</li><li>By 8 you have the skills to live independently but need support to keep it going</li></ul>';
        oat.Long_Description__c = '<p>This scale is about how well you are able to look after yourself and your home. It is about basic living skills and self-care, such as keeping yourself and your home clean, keeping safe at home, shopping for the things you need and cooking healthy meals.</p>';
        oat.Name = 'Self-care and living skills';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Shopping, cooking, keeping yourself and your accommodation clean and safe';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Financial Resilience';
        oat.Id = 'a154a000000FWxKAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We don’t have a stable, adequate home and/or enough money to buy food and other basics – there’s nothing I can do about it</b></p><p><br></p><p>One or more of these apply to your family:</p><ul><li>Your home is temporary or inadequate for your needs</li><li>Your home is overcrowded, has severe damp or lacks basic facilities such as a cooker or heating</li><li>There is a significant risk you will be evicted</li><li>You don’t have money to buy food and other basics. Maybe you are spending your money on alcohol or drugs instead</li><li>Someone is withholding money from you. Maybe you are a victim of financial abuse</li><li>Choose 1 if you never want to talk about these problems.</li><li>Choose 2 if you have moments of acknowledging the</li><li>problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>We don’t have a stable, adequate home and/or enough money – I want to change this but I don’t know how</b></p><p><br></p><ul><li>Your situation is the same as 1-2 but you acknowledge this is bad for your family. Maybe a crisis or a concerned professional has helped you realise this</li><li>Choose 3 if sometimes you accept support but sometimes you don’t. Choose 4 if you usually accept help but don’t take the initiative to sort things out for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to sort out our housing and finances but it’s hard</b></p><p><br></p><ul><li>If your housing is not adequate, you are making an effort to improve the situation. If you are waiting to be rehoused, you are trying to manage better</li><li>If you don’t have enough money for basics, you are sorting out benefits and/or taking more responsibility for managing your money</li><li>Choose 5 if you have just started taking action for yourself or give up easily.</li><li>Choose 6 if you stick to things for longer but have not yet found what works</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>Our home is secure and adequate for our needs and we usually have money for food and basics but there are a few problems</b></p><p><br></p><ul><li>Your home is adequate for your needs and there is no risk of eviction, with support. However, you still run into problems with money</li><li>You are getting the benefits you are entitled to and, if you have debts, you are making enough repayments to prevent threats or court action</li><li>Choose 7 if there are still some problems.</li><li>Choose 8 if your home is secure and you mostly manage on what you have but need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>Our home is secure and adequate for our needs and we manage on our income</b></p><p><br></p><ul><li>Your home is adequate for your needs and there is no risk of eviction</li><li>You are managing your money and make positive choices about how you spend it so you can pay your bills, cover the basics, and maybe even save a little</li><li>You are making regular repayments on any debts so they are not increasing</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if your home is secure and adequate and you manage on your income without support from a service</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 there is no immediate or severe risk of homelessness and your family mostly has heating, light and enough food</li><li>From 5 you are starting to take responsibility and action for yourself</li><li>Being at 8 or above means you have secure accommodation and an income and are covering the basics well enough</li></ul>';
        oat.Long_Description__c = '<p>This scale is about providing your children with the security of a stable home that is adequate for your needs and managing the finances you need to care for them. It covers whether you are able to manage financially and pay your bills regularly, including your mortgage or rent, without any risk of losing your home. It is also about how you spend the money you have so that you provide for your family’s basic needs.</p>';
        oat.Name = '8. Home and money';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Paying bills and rent, a secure and adequate home';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Housing';
        oat.Id = 'a154a000000FX7ZAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 I am not complying with the rules and occasionally worry about being evicted</b></p><ul><li>As for 1, except you will occasionally discuss issues, but if help is offered you do not accept it and nothing is changing</li></ul><p><br></p><p><b>1 I am not able or not willing to comply with rules and regulations</b></p><ul><li>You may be living on the street, sleeping rough or staying in overnight shelters</li><li>You are at high risk of eviction because of not paying rent or anti-social behaviour. You don’t see this as a problem or are not willing to discuss it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I am going along with things to keep my accommodation</b></p><ul><li>You are living in supported or temporary accommodation and mostly comply with the rules and regulations but are not working towards independent living</li></ul><p><br></p><p><b>3 I don’t want to lose my accommodation</b></p><ul><li>You are at risk of eviction but go along with the rules to avoid this</li><li>This may include co-operating with getting a claim running or agreeing to keywork but you find it hard to follow through with what you need to do</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am taking steps to be able to live independently and find a home</b></p><ul><li>You are living in supported or temporary accommodation and are actively taking steps to be ready to manage a home of your own, including learning about managing a tenancy or addressing other areas that have held you back</li></ul><p><br></p><p><b>5 I want to make the changes I need so I can live independently</b></p><ul><li>You want a place of your own and realise it is up to you to make changes. You feel motivated to do this and open to exploring issues that have held you back</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I can live independently, with ongoing support</b></p><ul><li>You are able to live in your own place and maintain a tenancy with support, though you may either be in your own flat or waiting for a flat at this point</li><li>You can manage rent and other bills, forward plan and mostly deal with crises</li></ul><p><br></p><p><b>7 I am learning how to manage my tenancy and be self-reliant</b></p><ul><li>You are learning how to maintain a tenancy, pay rent and other bills, forward plan and deal with unexpected events but there are a few areas of difficulty</li><li>You may have recently got your own flat, or be waiting for one</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I live independently and manage my own tenancy without support</b></p><ul><li>You are living in your own flat and maintaining your tenancy without support from a service. You pay your rent and other bills and there is no risk of eviction</li><li>You can forward plan and mostly deal with crises, drawing on your own support networks as needed</li></ul><p><br></p><p><b>9 I live independently, with occasional support</b></p><ul><li>As for 10, but you need occasional support in case of crisis</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently keep within the main rules of your accommodation</li><li>By 6 you are taking steps to live independently</li><li>By 8 you are able to manage accommodation for yourself well enough but need support to maintain that</li><li>By 10 you do not need a specialist service to maintain your accommodation</li></ul>';
        oat.Long_Description__c = '<p>This scale is about where you are living now and how well you comply with the terms of your accommodation, for instance paying rent and bills, getting on with your neighbours and taking responsibility for visitors. It is also about the steps you are taking to live independently.</p>';
        oat.Name = 'Managing tenancy and accommodation';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Where you live, complying with terms, taking steps to live independently';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FWvTAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>If my children have problems it’s not my fault. We don’t want any help</b></p><p><br></p><ul><li>Emotionally you are not able to meet your children’s needs</li><li>You may feel very distant from them or depend on them too much for your emotional needs</li><li>You may be feeling very depressed, critical of yourself, anxious or hopeless, and/or you may be experiencing domestic abuse</li><li>If you are drinking or using drugs this may be having a negative impact on your children</li><li>Choose 1 if you are not aware of, or can’t face thinking about, any negative impact on your children.</li><li>Choose 2 if you have moments of concern or of acknowledging problems but if support is offered you do not accept it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I accept support with the issues that prevent me from being there for my children</b></p><p><br></p><ul><li>Emotionally you are not able to be there for your children. You have similar issues to 1–2, but you recognise that there is a problem</li><li>If you have depression or other mental health issues, a drug or alcohol problem or are experiencing domestic abuse, you are aware that this is a problem and are accepting help</li><li>Choose 3 if sometimes you allow others to help but sometimes you don’t.</li><li>Choose 4 if you accept help more consistently but you don’t take the initiative to improve things yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to be there for my children but it’s really hard – things keep getting in the way</b></p><p><br></p><ul><li>You are actively addressing any issues that prevent you from responding positively to your children – you might be getting help for depression or other mental health issues, be tackling alcohol or drug misuse or trying to get out of an abusive situation</li><li>You try to give your children attention and to be responsive to them and sometimes it goes well but you find it hard to keep up.</li><li>Your children may experience you as inconsistent and not be seeing the benefits yet</li><li>If your relationship has been very distant or over-close then you are making a conscious effort to change this</li><li>Choose 5 if it is early days.</li><li>Choose 6 if you have been trying for a while but have not yet found what works</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am responding to my children’s emotional needs but there are a few problems</b></p><p><br></p><ul><li>You are mostly able to respond well enough to your children but not always</li><li>You have learnt some new approaches and are noticing a positive impact on your children when you use them</li><li>You have made progress with any issues that were affecting your well-being</li><li>If you have a mental health issue or a drug or alcohol problem this is managed well enough not to affect your relationship with your children</li><li>If you have experienced domestic abuse in the past you have changed the situation and are no longer exposed to any abuse</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children have what they need to be happy and resilient but you still need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I respond well enough to my children and don’t need support in this area</b></p><p><br></p><ul><li>You feel close and connected to your children. You can empathise with them and enjoy their company but don’t depend on them emotionally</li><li>If you have a mental health issue or use drugs or alcohol this is not having a negative impact on your child</li><li>Your own emotional well-being is good enough for you to be able to be there for your children</li><li>Choose 9 if you need occasional support in this area.</li><li>Choose 10 if your children have what they need to be happy and deal with life’s ups and downs and you don’t need support with this</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>If you have mental health or drug or alcohol problems, you will need support for yourself as well as your children</li><li>By 4 you are consistently accepting this support</li><li>By 8 you do not have any mental health, drug or alcohol problems or these are managed well enough</li></ul>';
        oat.Long_Description__c = '<p>This scale is about you and your children. For your children it is about ensuring they grow up happy and able to deal with life’s ups and downs. If you feel depressed or anxious or aren’t coping well it can be harder to give your children the love, attention and connection with you that they need, and you will need support too. There is also space here to discuss any problems within the family connected to mental health, alcohol, drugs or domestic abuse.</p>';
        oat.Name = '2. Emotional well-being';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Your well-being, your children’s happiness and resilience, connection and love';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000FWx0AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I’m not thinking about my children’s learning or aspirations</b></p><p><br></p><ul><li>Your children aren’t regularly attending school, training, work or suitable alternative education and you don’t acknowledge this as a problem. You aren’t giving pre-school children stimulating things to do, playing with them, helping them develop co-ordination or taking them to places that help their development</li><li>Your children are behind other children of a similar age in their development. Maybe you are negative about school or don’t know how to support them</li><li>Choose 1 if you don’t see this as a problem.</li><li>Choose 2 if you have moments of acknowledging problems about your children’s learning but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am concerned that my children are missing out and I’m accepting support to do something about this</b></p><p><br></p><ul><li>You are concerned that your children are not regularly taking part in school, training or stimulating activities, or are achieving well below their potential</li><li>Choose 3 if you occasionally accept help with this.</li><li>Choose 4 if you accept help more consistently but you don’t take the initiative to support your children yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>There are problems with learning and aspiration but I am trying to sort them out</b></p><p><br></p><ul><li>You are trying to make a difference to your children’s education or early development but they are missing out on learning opportunities</li><li>You are trying new things with your children, for instance praise, playing or reading together, or sanctions for missing school, but you find it hard</li><li>If your children are leaving or have left school/college, you are trying to help them make positive choices but it’s hard</li><li>Choose 5 if you give up easily.</li><li>Choose 6 if you have been doing this for a while but haven’t yet found what works to support your children effectively</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>Some things are working well but there are still problems to address</b></p><p><br></p><ul><li>Your children are attending school regularly and/or have opportunities to learn, play and develop but there are still problems in some areas</li><li>If your children have left school/college, you are encouraging them in getting or holding down training or employment and in developing aspirations for the future</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children are able to learn well but you need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children are learning well and developing positive aspirations for the future</b></p><p><br></p><ul><li>Your children are reaching their potential. Their school attendance is good and you attend main school events and celebrate their achievements</li><li>You prioritise learning, play, reading, early development and other stimulation for your baby or young children. Older children have support with college, training or work, and encouragement to take responsibility and make positive choices</li><li>Your children have positive role models</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if your children are learning well and you don’t need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 1 to 4 any efforts to turn around problems with school or learning come from outside the family</li><li>From 5 you are increasingly motivated and addressing this for yourself</li><li>By 8 your children have good attendance at school or training and/or are supported to develop and achieve their potential</li></ul>';
        oat.Long_Description__c = '<p>This scale is about supporting your children’s learning and aspirations. For school-age children this means at least 85% attendance, but targets may vary. For babies and younger children, it is about developing co-ordination, stimulating activities, messy play, positive risk-taking and helping them start school well. For older children, it is about supporting aspiration and ensuring they are engaged in work or learning.</p>';
        oat.Name = '5. Education and learning';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'School, homework, learning through play, early development';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000FX4VAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 Maybe my drug use or drinking is a problem but that’s just the way it is</b></p><ul><li>As for 1, but every now and then you acknowledge that you are worried about drugs or alcohol</li><li>You are not ready to make changes and don’t engage with support</li></ul><p><br></p><p><b>1 I don’t have a problem with drugs or alcohol – although others think I do</b></p><ul><li>Your drug use or drinking is stopping you making progress and may be seriously damaging your health, but you won’t engage in discussion about it</li><li>Your life may be orientated around drugs or alcohol</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I go along with some things to reduce the risks or harm from alcohol or drugs</b></p><ul><li>You are making some changes to reduce the risk of harm from alcohol or drugs</li><li>You consistently go along with suggestions but don’t yet take the initiative</li><li>Or you don’t accept help but don’t drink or use drugs heavily enough to risk severe harm</li></ul><p><br></p><p><b>3 I need some help with my drug use or my drinking</b></p><ul><li>You are fed up with the negative consequences of drugs or alcohol and want to change but do not believe it is possible or do not think you are responsible</li><li>You accept help but often miss appointments</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am doing some things myself to address my drug use or drinking</b></p><ul><li>You are reducing your use of drugs or alcohol, or stopping completely for periods</li><li>You may attend appointments, set goals and access extra support to get clean</li></ul><p><br></p><p><b>5 I see that I need to make changes myself to tackle my drug use or drinking</b></p><ul><li>You recognise you have to change to control or stop misusing drugs or alcohol</li><li>You are actively exploring options to help yourself</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I am not using drugs or drinking problematically but need support to maintain this</b></p><ul><li>You are finding new ways of coping with what led to heavy drinking or drug misuse</li><li>You feel more confident but it isn’t easy, so you need support to maintain this</li></ul><p><br></p><p><b>7 I am learning to manage my alcohol and/or drug use but there are a few issues</b></p><ul><li>You have reduced any problematic drinking or drug use substantially</li><li>You are exploring triggers for excess drinking or drugs, reflecting on causes and finding strategies to help.</li><li>You are able to learn from lapses, with support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I don’t have a problem with drugs or alcohol or I manage without support from a service</b></p><ul><li>Alcohol and drugs do not get in the way at all, and if you had problems in the past, family, friends, your GP or self-help groups provide any ongoing support you need</li></ul><p><br></p><p><b>9 I am not using drugs or drinking problematically, with occasional support</b></p><ul><li>You have your own strategies and mostly do not need support from a service</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently take steps to stay safe</li><li>At 5 the main shift is taking responsibility and by 7 you have significantly reduced your use</li><li>Being at 8 or above means you are not drinking problematically and are no longer using illegal drugs or misusing legal or prescribed drugs.</li><li>By 10 you do not need support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about whether you use drugs, whether your drinking has a bad effect on your life and how you are dealing with any drug or alcohol issues. It is about how aware you are of any problems you have with drugs or alcohol, and whether you are working to reduce the harm they may cause you. If you do not use drugs, or drink much alcohol, place yourself at 10.</p>';
        oat.Name = 'Drug and alcohol misuse';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Illegal drugs, drinking problematically, misuse of prescribed drugs';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FWx5AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I don’t feel there is a problem with boundaries or behaviour though I know others are concerned</b></p><p><br></p><ul><li>Your children’s behaviour and/or yours causes difficulties, your family is in trouble with the law, or others have raised concerns about your children’s behaviour</li><li>Your children may feel there are no rules or that the rules are too strict or unfair</li><li>They may be copying some difficult behaviour from the way you behave at times</li><li>Choose 1 if you feel there isn’t a problem with your children’s behaviour.</li><li>Choose 2 if you have moments of acknowledging problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children’s behaviour is a problem – I need help to deal with them</b></p><p><br></p><ul><li>Your children’s behaviour causes difficulties or your family is in trouble with the law and you know this can’t go on. You may be afraid to tackle bad behaviour because of how they will react, or don’t know how to change your own behaviour</li><li>Choose 3 if you are sometimes open to help.</li><li>Choose 4 if you consistently accept help but are not yet taking the initiative to improve things for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am learning about appropriate boundaries and how to maintain them</b></p><p><br></p><ul><li>Your children’s behaviour causes difficulties but you are learning new ways of dealing with this, maybe through a parenting course. You may be setting clearer boundaries, loosening ones that are too strict, or talking and listening to your children more</li><li>You are trying to set a good example to your children, for example by being considerate to neighbours or teachers or by moderating aggressive behaviour</li><li>Your children may resist the changes so their behaviour may seem worse for a while</li><li>Choose 5 if you have just started doing things differently.</li><li>Choose 6 if you have been trying for a while and are hopeful things will get better</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I set appropriate boundaries and have some skills to help my children keep within them but there are some difficult areas</b></p><p><br></p><ul><li>You are mostly able to manage but there are some problems. If there is another parent/carer, you are working out how to give your children a consistent message</li><li>Choose 7 if there are still some problem areas.</li><li>Choose 8 if you have appropriate boundaries in place, are not involved in any anti-social or criminal behaviour, and deal effectively with any incidences involving your children, with support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I am able to maintain effective boundaries and deal effectively with any problems</b></p><p><br></p><ul><li>You have firm, fair boundaries within the family that work most of the time. You adapt these as your children grow up, anticipate problems and find ways around them</li><li>You are consistent and mostly feel able to deal with difficult behaviour</li><li>You are not involved in anti-social or criminal behaviour. Perhaps your children sometimes make bad choices but you can deal with this effectively</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if you are able to maintain effective boundaries without support or only have babies or very young children</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 4 you are consistently accepting help so any antisocial, risky or illegal behaviour is not getting worse</li><li>By 6 any problematic behaviour is reducing</li><li>By 8 your family is not regularly involved in crime or antisocial behaviour or taking inappropriate risks and you provide appropriate boundaries for your children, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about giving your children clear boundaries so that they understand what is expected of them and the consequences of negative behaviour. It is about being a positive role model through your own behaviour, and dealing with difficulties constructively. If your children are still babies or very young and you do not need support with boundaries, place yourself at 10.</p>';
        oat.Name = '6. Boundaries and behaviour';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Difficult, criminal and anti-social behaviour, maintaining appropriate boundaries';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FWxFAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We don’t have a family routine and our home is chaotic. I don’t see that as a problem</b></p><p><br></p><ul><li>Either there is no family routine or the current one is having a negative effect on your children. They don’t have a regular bedtime or meals or get to where they need to be on time, or don’t wash enough or have clean, suitable clothes to wear</li><li>Your home is not clean enough and is too chaotic to support a positive family routine. There may be no food in the kitchen, for example, or you are relying on older children to look after younger children without appropriate support</li><li>Choose 1 if you don’t see this as a problem.</li><li>Choose 2 if you have moments of acknowledging problems about the lack of routine but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children need a better family routine but I don’t know how to make that happen</b></p><p><br></p><ul><li>As 1-2 but you recognise that the current situation is not working for your children. You probably have someone giving you advice on how to change things, but you may be feeling criticised and might not want to do things their way</li><li>Choose 3 if you occasionally accept help.</li><li>Choose 4 if you accept help more consistently but you are not yet taking the initiative yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to create a positive routine for my family</b></p><p><br></p><ul><li>You are trying to put supportive routines in place, such as sticking to regular meal- or bedtimes, getting your home more organised or doing things together as a family</li><li>Your children may rebel against the changes so things feel worse for a while</li><li>Choose 5 if you quickly slip back to old ways.</li><li>Choose 6 if you stick longer with new approaches but have not yet found what works to establish a positive routine</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My family has a positive routine but there are a few difficult areas</b></p><p><br></p><ul><li>There are some problems but the family has a clear sense of routine. Your children eat at least one meal at a regular time each day, wash enough and get up at a regular time on weekdays. Your home is mostly clean and organised enough</li><li>You manage to do some things together as a family most weeks</li><li>Choose 7 if there are still some problem areas.</li><li>Choose 8 if your children’s basic needs are met but you need support to maintain a positive family routine</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My family has a positive routine that supports us all</b></p><p><br></p><ul><li>Your children have regular meals, get up at a regular time and get to where they need to be during the day. They are clean enough, have suitable clothes and get enough sleep. The house is clean and organised enough, with food in the kitchen</li><li>Exactly how you achieve this will depend on your culture. The important thing is that your children’s basic needs are met and that you do some things together</li><li>Choose 9 if you need occasional support with your family routine.</li><li>Choose 10 if you are able to maintain a positive routine well enough without support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently accept support so things are not getting worse</li><li>From 5 you are increasingly learning for yourself how to establish a supportive family routine</li><li>By 8 your home is clean and organised enough to support a positive family routine and your children mostly have regular meals, enough clean clothes and a regular weekday bedtime/getting-up time</li></ul>';
        oat.Long_Description__c = '<p>This scale is about a supportive weekday routine so your family can all get to school, nursery or work on time and your children have regular meals, suitable clothes and are clean enough. This includes making sure your home is clean and organised enough, and encouraging teenagers to take responsibility for their routines. It is also about doing some things together, such as eating meals, watching TV, going to the park or other activities</p>';
        oat.Name = '7. Family routine';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Bedtime, getting up, mealtimes, basic care, doing things together';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Housing';
        oat.Id = 'a154a000000G0CAAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I am at risk of eviction, staying somewhere unsuitable, homeless or in custody. I don’t have or don’t accept support</b><b style="color: rgb(0, 0, 0);">﻿</b></p><p><br></p><ul><li><span style="font-size: 7pt; color: rgb(0, 3, 1);"> </span><span style="color: rgb(0, 3, 1);">You are homeless, staying somewhere unsuitable or in custody</span></li><li><span style="color: rgb(0, 3, 1);">Or you have your own place but are at high risk of eviction for not paying rent, anti-social behaviour or breaking your tenancy agreement in other ways</span></li><li><span style="color: rgb(0, 3, 1);">You appear to be unable or unwilling to comply with rules and regulations</span></li><li><span style="color: rgb(0, 3, 1);">You don’t have any support with accommodation, or you don’t accept it</span></li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b style="font-size: 12px; color: rgb(0, 0, 0);">I am at risk of eviction, staying somewhere unsuitable, homeless or in custody. I engage with support but don’t take the initiative</b></p><ul><li><span style="color: rgb(0, 3, 1);">You are homeless, staying somewhere unsuitable or in custody, or are at risk of eviction</span></li><li><span style="color: rgb(0, 3, 1);">You are talking to someone about accommodation</span></li><li><span style="color: rgb(0, 3, 1);">You go along with support, for example co-operating with applying for benefits or with keywork, but you don’t take the initiative</span></li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I have somewhere to live, with support, and am not at risk of eviction. I am taking steps to live independently in the future but it’s early days.</b></p><p><br></p><ul><li>You have somewhere to live that is suitable at least for now and are taking steps towards living independently in the future</li><li>You are not in custody, or you are about to be released from custody, and are actively planning how to manage your accommodation, with support</li><li>You know it is up to you to make changes and you feel motivated to do this, but it’s difficult and things often go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I have somewhere stable to live, or am applying for a place. I mostly manage OK but need some support with the tenancy agreement, sharing with people or other issues.</b></p><p><br></p><ul><li><span style="color: rgb(0, 3, 1);">You are living somewhere suitable and learning how to manage a tenancy and be more independent</span></li><li><span style="color: rgb(0, 3, 1);">Either you are in independent accommodation, with support from the service, or you are in temporary, supported accommodation and making applications for somewhere independent</span></li><li><span style="color: rgb(0, 3, 1);">Suitable accommodation can include supported lodgings with carers or shared housing</span></li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I live independently and manage well enough without support from a service. I know how to get help if I need it.</b></p><p><br></p><ul><li>You live independently, without support from a homelessness or young person’s service, perhaps in shared accommodation</li><li>You keep to the terms of your tenancy so there is no risk of being evicted</li><li>You can mostly deal with crises, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p style="text-align: justify;"><span style="color: rgb(0, 3, 1);">This scale is about where you are living now and how well you are managing there so that your accommodation is stable and you are not risking eviction. This includes sharing with other people and complying with your tenancy agreement or other terms of your accommodation, for instance taking responsibility for visitors. It is also about the steps you are taking to live more independently.</span></p>';
        oat.Name = '1. Accommodation';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'We are here to help you develop the  skills you need to live independently and support you on the way to the future you want';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000G0CFAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I am not in work, training or education and don’t want to talk about it.</b></p><p><br></p><ul><li>You are in work, training, education or volunteering as a route to work, or you are a full-time parent or have a disability that prevents you from working</li><li>You don’t need support in this area</li><li>You are on track towards what you want to achieve</li><li>You can move between jobs and organise new activities, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am not in work, training or education but I want to do something with my time and am talking to someone about it.</b></p><p><br></p><ul><li>You are in work, training, education or volunteering as a route to work, or you are a full-time parent or have a disability that prevents you from working, but you need support from the service</li><li>You may be learning new tasks and new skills in the workplace or in education</li><li>You may not yet have found the right work, training or education for you, but you are taking steps to get there</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am having a go at training, education, volunteering, work or another activity but find it hard to stick to.</b></p><p><br></p><ul><li>You are having a go at work, training, education or volunteering, or applying to do something with your time</li><li>You are actively considering the future and talking about your options</li><li>You find it hard to keep going with new activities and routines and may need lots of support and encouragement</li><li>You know it is up to you to make changes and you feel motivated to do this, but it’s difficult and things often go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am in training, education or work, or I’m a full-time parent. I need support to maintain this, make progress or change direction.</b></p><p><br></p><ul><li>You are in work, training, education or volunteering as a route to work, or you are a full-time parent or have a disability that prevents you from working, but you need support from the service</li><li>You may be learning new tasks and new skills in the workplace or in education</li><li>You may not yet have found the right work, training or education for you, but you are taking steps to get there</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I am in training, education or work, or I’m a full-time parent. I am working towards what I want to achieve without support from a service.</b></p><p><br></p><ul><li>You are in work, training, education or volunteering as a route to work, or you are a full-time parent or have a disability that prevents you from working</li><li>You don’t need support in this area</li><li>You are on track towards what you want to achieve</li><li>You can move between jobs and organise new activities, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about how you spend your time during the week and your aspirations for the future, whether you are in training or education, in work, or taking steps towards a working future that is meaningful to you. If you are a full-time parent or have a disability that prevents you from working, simply place yourself at 5 and move to the next area.</p>';
        oat.Name = '2. Work and learning';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'How you spend your time during the week, aspirations for the future';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000G0CjAAK';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I am not able to shop, cook, clean or do laundry or other tasks well enough to look after myself. I don’t have or don’t accept support in this area.</b></p><p><br></p><ul><li>You don’t look after yourself well but you don’t want to talk about it</li><li>You aren’t able to cook, clean, shop, do laundry or other practical tasks well enough to keep yourself warm, fed and clean. Perhaps you don’t know how or other things are taking your attention</li><li>If you have a place to live, it is a mess and may be unsafe or a health risk</li><li>You don’t have any support or you don’t accept it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am not able to shop, cook, clean or do laundry or other tasks well enough to look after myself. I go along with support in this area but don’t take the initiative.</b></p><p><br></p><ul><li>You are not able to carry out the practical tasks needed to look after yourself well enough, but you are talking to someone about this</li><li>You accept support, so any pressing concerns about keeping fed, clean or warm enough are being addressed</li><li>You go along with suggestions but do not take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to learn to cook or to gain other practical life skills I need to live independently but it’s early days and there’s a lot to take in.</b></p><p><br></p><ul><li>You are taking steps to learn to cook or develop other practical life skills but it’s early days</li><li>You keep yourself clean enough and are doing more for yourself without prompting, such as cleaning up or doing laundry</li><li>Perhaps you want to live independently in the future and know it is up to you to make changes, but it’s difficult and things often go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I manage OK with most practical tasks but need support in one or two areas.</b></p><p><br></p><ul><li>You mostly manage OK with practical tasks but you need to develop better skills in one or two areas</li><li>You are mostly able to keep yourself warm and fed, and to keep your place safe, clean and tidy enough but you need support to maintain this or to get back on track when things go wrong</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I am able to live independently. I am confident with shopping, cooking, cleaning, laundry and other practical tasks.</b></p><p><br></p><ul><li>You are able to live independently and look after yourself well enough without outside help</li><li>You are confident enough with shopping, cooking, cleaning, doing laundry and other practical tasks on your own</li><li>You may not need to use all these skills where you are living at the moment but you have them</li><li>If you let things go, you notice and can sort it out</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about all the skills you need to live independently and look after yourself well, including shopping, cooking, cleaning, doing laundry and other practical tasks. If you are confident with some tasks but not others, make a note of what you do well and choose where you are on this scale in relation to the tasks you need support with.</p>';
        oat.Name = '8. Practical life skills';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Shopping, cooking, laundry, cleaning and other practical tasks';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000G0CKAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>There is no one who cares what happens to me or helps me sort my life out, or I am in a violent relationship or at risk from people around me.</b></p><p><br></p><ul><li>You are isolated or only spend time with people who are not helpful for you</li><li>Perhaps there is no one around at the moment who helps you sort your life out</li><li>Perhaps you are in a violent relationship or at risk from people around you</li><li>You do not have positive support outside the service and don’t accept help from the service</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>At least one worker in the service is helping me and I feel supported by them. My friends or family are mostly not helpful.</b></p><p><br></p><ul><li>Any friends or family are mostly not helpful for you. Perhaps you are at risk of violence or exploitation from them or others</li><li>However, you are talking to at least one worker in the service and you feel supported by them</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I try to spend time with people outside the service who are good for me but it’s difficult. People knock me back or I miss my old friends.</b></p><p><br></p><ul><li>You try to spend time with people outside the service who are good for you, but it’s difficult and things often go wrong</li><li>If your friendships have revolved around alcohol, drugs or other unhelpful behaviour, you are trying to move on from them, but it’s hard and you may miss your old friends</li><li>If you were in a violent relationship, you have ended it or are trying to, and you are trying to understand what happened so that it doesn’t happen again</li><li>You may feel isolated or rely heavily on one or more workers in the service</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am getting to know new people or spending more time with people who are good for me, but I need support from workers too.</b></p><p><br></p><ul><li>You are getting to know new people, or spending more time with people who support you in making positive choices</li><li>You are learning to stay away from people who are not good for you</li><li>You look to one or more workers in the service to meet the need for positive connections with other people and may feel isolated or lonely at time</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I mostly feel supported and connected. I have friends or other people outside the service who are good for me, so I don’t need professional support in this area.</b></p><p><br></p><ul><li>You mostly feel supported and connected and don’t need help in this area</li><li>You have friends or other people outside the service who support you and are good for you</li><li>You can mostly deal with difficulties that arise in friendships, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about feeling connected and supported and having people in your life – friends, family or others – who help you to make positive choices and move in the direction you want. Early on, support may come from one or more workers, but towards the top of the scale people outside of the service provide you with the support network that we all need in life.</p>';
        oat.Name = '3. People and support';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Support from workers and networks outside the service';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000G0CPAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I am harming or risking my health by not getting treatment for physical or mental health problems, sexual risk-taking or not eating well enough.</b></p><p><br></p><ul><li>You are harming or risking your health but you don’t want to talk about it</li><li>You don’t go to the doctor even for pressing physical or mental health problems</li><li>You aren’t eating well enough or getting enough sleep</li><li>You may be taking risks with your sexual health</li><li>You don’t want to discuss your health. Perhaps it feels too hard to think about or other things take all your attention</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am harming or risking my health but I know this needs to change and I am talking to someone about it.</b></p><p><br></p><ul><li>You are not looking after your health but you are talking to someone about it</li><li>You will see a doctor or other health professional if you need to and if someone else organises it</li><li>You go along with things that are good for your health at least some of the time, if it is easy and organised for you, but you do not take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to look after my health better, such as by going to the doctor if I am ill or eating more healthy food. It’s difficult and I often slip back into old habits.</b></p><p><br></p><ul><li>You are trying to look after your health better, for instance by going to the doctor if you are ill, eating more healthy food or doing exercise</li><li>You know it is up to you to make changes and you feel motivated to do this, but it’s difficult and you often slip back</li><li>For example, perhaps you carry condoms and mean to use them, but then don’t after drinking or taking drugs. Perhaps you mean to have a healthy meal or go to bed early but you end up eating unhealthy snacks or staying up late</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I look after my health well enough in some ways but there are areas where I need reminders or support from the service.</b></p><p><br></p><ul><li>You look after your health well enough in some ways but there are areas where you need reminders or other support from the service</li><li>You go to the doctor or other health service when you need to and take any medication prescribed</li><li>You mostly eat enough healthy food, take some exercise and have reasonable sleep routines, but you need support to keep this going</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I look after my physical, mental and sexual health well enough by myself. I go to the doctor when I need to and mostly have enough healthy food, exercise and sleep.</b></p><p><br></p><ul><li>You look after your physical, mental and sexual health well enough by yourself</li><li>You mostly have enough healthy food, exercise and sleep so you mostly feel reasonably well and can do the things you need to do in life</li><li>You go to the doctor or other health service when you need to, take any medication prescribed and are managing any health conditions well enough</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about how well you look after your health, not about how good your health is at the moment. It includes looking after your health by eating enough healthy food, taking exercise and trying to sleep well. It is also about going to the doctor and dentist as needed, taking prescribed medication, managing any health conditions you have and protecting yourself from sexually transmitted infections (STIs).</p>';
        oat.Name = '4. Health';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Food, exercise, sleep, doctors, sexual health, mental health';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000G0CUAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I mostly feel confident, know who I am and am happy to be me. I can address any issues around my identity or being accepted without help from the service.</b></p><p><br></p><ul><li>You mostly feel bad about yourself</li><li>You may have low self-esteem or not value yourself as a person. Perhaps other people have put you down for years and it’s hard not to believe what they say about you</li><li>Perhaps you feel that you don’t fit in or don’t feel accepted because of who you are or the choices you make. Maybe you don’t really know who you are yet</li><li>You may feel confused, angry, upset or stressed, but you don’t want to talk about how you feel</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I know who I am and mostly feel OK about being me, but need support from the service with some issues or when things go wrong.</b></p><p><br></p><ul><li>You mostly feel bad about yourself but you are talking to someone about how you feel</li><li>You are getting some help around self-esteem, identity or other issues</li><li>You go along with support but do not take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I have some issues around identity or self-esteem. I am trying to sort them out and I sometimes feel OK about myself but it’s early days.</b></p><p><br></p><ul><li>You are taking steps to feel better about yourself but it’s early days and you may need lots of support and encouragement</li><li>When you feel OK, you can believe you are worthy of love and respect, but you quickly lose that belief when people put you down or other things go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I know who I am and mostly feel OK about being me, but need support from the service with some issues or when things go wrong.</b></p><p><br></p><ul><li>You mostly feel OK to be you and can bounce back if people put you down</li><li>You are gaining confidence about yourself and how you are with others</li><li>You need support from the service with some issues or when bigger things go wrong</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I mostly feel confident, know who I am and am happy to be me. I can address any issues around my identity or being accepted without help from the service.</b></p><p><br></p><ul><li>You mostly feel OK about who you are and can respond as well as most people your age to the ups and downs of life</li><li>You can manage any issues around your identity without help from the service, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about how you feel most of the time and how you manage any difficult emotions and/or mental health issues, whether diagnosed or not. There is space here to talk about whatever is most relevant to you at the moment, whether that is lack of self-esteem, anxiety, feeling very up and down without knowing why, particular issues around identity or any other aspect of how you feel.</p>';
        oat.Name = '5. How you feel';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Knowing who you are, self-esteem, working on any issues with identity';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000G0CZAA0';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I get into risky situations or trouble a lot, or am using drugs or drinking too much. I don’t want to discuss my choices or behaviour.</b></p><p><br></p><ul><li>You often get into risky situations or put other people at risk</li><li>This may be because you use illegal drugs or drink too much</li><li>Perhaps you are involved in offending or anti-social behaviour or you often get into fights or other trouble</li><li>You don’t know how to stop or don’t want to. If people try to help you, you don’t accept their support in this area</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I want to stop being in trouble or am worried about drugs, alcohol or the risky situations I get into. I am talking to someone about making better choices</b></p><p><br></p><ul><li>You are talking to someone about making better choices</li><li>Perhaps you are fed up with being in trouble or you want to avoid going to prison or things getting worse in other ways. Perhaps you are worried by some of the risky situations you get into</li><li>You go along with support but do not take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to make positive choices but it’s difficult and things can go wrong.</b></p><p><br></p><ul><li>You are trying to make positive choices about your behaviour, but it’s hard</li><li>If you use illegal drugs or drink too much, you are cutting down or stopping at times but you find it hard to stick to</li><li>You may be attending appointments and setting goals to try to change your behaviour</li><li>You know it is up to you to make changes and you feel motivated to do this, but it’s difficult and things often go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I want to stop being in trouble or am worried about drugs, alcohol or the risky situations I get into. I am talking to someone about making better choices.</b></p><p><br></p><ul><li>You mostly stay safe and out of trouble, with support from the service</li><li>You are not offending and mostly not involved in anti-social behaviour, but sometimes things go wrong and you need support in this area</li><li>You mostly manage to keep yourself safe around drugs and alcohol, with support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I get into risky situations or trouble a lot, or am using drugs or drinking too much. I don’t want to discuss my choices or behaviour.</b></p><p><br></p><ul><li>You stay safe and out of trouble, without support from the service</li><li>You drink safely or not at all and you don’t use illegal drugs</li><li>You are not offending or involved in anti-social behaviour</li><li>You can mostly deal with crises, drawing on your own support networks as needed</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about whether you use drugs, get into problems because of drinking too much, or get into trouble with the police through fights or other anti-social behaviour or offending. There is also space here to talk about any other ways in which you might be putting yourself or others at risk through your choices and behaviour and how you want to change this.</p>';
        oat.Name = '6. Choices and behaviour';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Drugs and alcohol, avoiding offending and anti-social behaviour';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000001AyOAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Financial Resilience';
        oat.Id = 'a154a000000G0CeAAK';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I have no regular income or I’m not managing money responsibly or safely. I am not doing anything about this.</b></p><p><br></p><ul><li>You don’t have enough money to cover the basics, either because you have no regular income or because you are not managing your money responsibly or safely</li><li>You do not have access to safe banking</li><li>You don’t know what to do about this, or you don’t take any action. You don’t have any support or you don’t accept it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am not managing my money or have no regular income. I go along with help to sort this out but am not taking the initiative.</b></p><p><br></p><ul><li>You have no regular income or you are not managing your money</li><li>You are talking to someone about this</li><li>You go along with support but do not take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (2)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I have some regular income and am trying to sort out problems with money. It’s early days and I often end up in chaos or short of money.</b></p><p><br></p><ul><li>You have some regular income and are trying to sort out problems with money, but it’s early days</li><li>You are learning about paying off debt, budgeting or other skills to keep track of your money but it is hard and you end up in crisis at times</li><li>You know it is up to you to make changes and you feel motivated to do this but it’s difficult and things often go wrong</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying to sort things out (3)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I manage money OK and can mostly buy the basic things I need and avoid crises, but there are some problems so I need support.</b></p><p><br></p><ul><li>You manage money well enough in some areas but you need better understanding, resources or attitude in one or two areas</li><li>You mostly have enough money to cover the basics and avoid crises</li><li>You are trying to keep up repayments on debts and you do not borrow more money than you can pay back</li><li>Sometimes things go wrong and you need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Getting there with support (4)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I am confident managing money safely and responsibly. I deal with any rent arrears or debts and can budget, plan ahead and make decisions without support.</b></p><p><br></p><ul><li>You are able to manage your money safely and responsibly enough on your own</li><li>You pay your rent, deal with any rent arrears and keep up with debt repayments as agreed</li><li>You mostly pay your bills and can budget and plan ahead to some extent without support from the service</li><li>You use safe banking, understand the main financial products and choices available and can make decisions about what is best for you</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Independent (5)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = null;
        oat.Long_Description__c = '<p>This scale is about how you manage the money you have and whether you have enough money to cover the basics each week. It includes paying your rent regularly and also managing any other debts or regular costs. It is also about being able to plan ahead with your finances and use banks and any other services you need.</p>';
        oat.Name = '7. Money and rent';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = '1';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = '2';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = '3';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = '4';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = '5';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Rent, benefits, grants, banks, budgeting and planning ahead';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000FQgSAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>I don’t get looked after well enough when I am ill</li><li>I don’t have enough to eat or eat mostly unhealthy snacks</li><li>I don’t get enough sleep or exercise so I am often tired</li><li>I don’t start the day clean enough or have the clothes I need</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Big concerns';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, there are problems with looking after my physical health; but</li><li>My parents or carers are trying to make it better</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Someone is helping me';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>I don’t eat healthily but I have enough food</li><li>I get some care when I’m ill and I go to the doctor if I need to</li><li>I don’t have good routines so I often feel sleepy during the day</li><li>I often don’t start the day clean and may need better clothes</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'No big concerns';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>Most of my physical care is OK but some things need to improve, such as bedtime routines so I get enough sleep, eating healthy food, washing or wearing more suitable clothes</li><li>Someone looks after me if I’m ill but I miss some check-ups at the dentist or doctor</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Mostly OK';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I mostly eat enough healthy food and have proper meals</li><li>I get enough sleep and exercise so I am not tired in the day</li><li>I go to the doctor and dentist as needed, including check-ups</li><li>I am mostly clean enough, including brushing my teeth</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Things are good';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Healthy food</li><li>Bedtime and other routines</li><li>Doctor and dentist</li><li>Keeping clean enough</li></ul>';
        oat.Long_Description__c = '<p>Every child needs adults who look after them or, when they are older, provides them with what they need to look after themselves well. We want to make sure that you have the care you need and are getting the right amount of help for your age</p>';
        oat.Name = '1. Physical health';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Big concerns';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Someone is helping me';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'No big concerns';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Mostly OK';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Things are good';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'How others look after you and keeping yourself healthy';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FQhBAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>My parents may love me but they are mostly unkind or ignore me</li><li>I look after my parents and don’t have support as a young carer</li><li>Or I don’t live with my parents and it’s hard. I don’t have support to cope with this or enough love and attention in my placement</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Big concerns';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, but my parents want to make it better</li><li>Or I don’t live with my parents and its hard but I have support</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Someone is helping';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>My parents sometimes comfort and praise me but not enough</li><li>I look after them and need more help with this</li><li>Or I don’t live with my parents and there are some problems with contact or with my placement</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'No big concerns';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I trust my parents to be there for me if I really need them</li><li>They mostly give me the love and attention I need but things could be better</li><li>Or my parents are not around and it’s mostly OK but I need help with a few things</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Mostly OK';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I can trust my parents to love and support me</li><li>They give me attention, comfort and praise</li><li>Or my parents aren’t around but I mostly feel OK about this and other adults love and support me</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Things are good';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Attention</li><li>Warmth</li><li>Love and contact</li></ul>';
        oat.Long_Description__c = '<p>All children and young people need attention, love, empathy and warmth. This can be expressed in different ways and adults don’t need to be perfect or always patient and kind. But you need to know they are on your side when you really need them, whether or not you live with them all the time.</p><p><br></p><p>If you do not live with your parents, or if they are no longer around, you can use this area to explore how you feel about this and how you can still find the love and support you need as you grow up.</p>';
        oat.Name = '4. Relationships';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Big concerns';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Someone is helping';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'No big concerns';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Mostly OK';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Things are good';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Your relationship with your parents';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000FSCKAA4';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We are isolated. I don’t want to talk about it</b></p><ul><li>You have little helpful support from family or friends and your children don’t spend time with friends or positive peer groups to develop their social skills</li><li>Perhaps you are a long way away from family and/or friends, no one around speaks your first language or you have been threatened or feel that your family is not welcome because of drugs, domestic abuse, disability or complaints about you; or</li><li>The people you are mixing with are a negative influence on the family – perhaps because they drink, are involved in crime or behave inappropriately</li><li>Choose 1 if you can’t face thinking about this.</li><li>Choose 2 if you have moments of concern or of acknowledging problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>We are isolated. I’m accepting support so we can start to feel more at home here</b></p><ul><li>The situation is the same as 1-2 but you acknowledge that you and/or your children are isolated or mixing with people who have a negative influence on you</li><li>Choose 3 if you accept help sometimes but often you don’t.</li><li>Choose 4 if you accept help more consistently but you still don’t try to sort this out for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>We are getting to know people or seeing more of friends or family</b></p><ul><li>You are trying to connect with people locally and/or to see more of family or friends further away, and finding out about local facilities that matter to you</li><li>You are thinking about your children’s social networks – whether they have positive friendships and opportunities to develop social skills </li><li>If there are harassment or bullying issues you are trying to sort these out, with help</li><li>Choose 5 if you give up easily.</li><li>Choose 6 if you feel more confident and motivated. Getting to know people may be hard so you may need extra support</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My family has social contact and connections but we need support in this area</b></p><ul><li>Your children have positive friendships and spend time with other children</li><li>You have friends, neighbours or wider family you spend time with and maybe people you can call on for support, favours and childcare. You may have joined in some local activities and met new people but don’t yet feel confident with them</li><li>You have addressed any harassment or bullying issues but still need support</li><li>Choose 7 if there is more that needs to improve.</li><li>Choose 8 if you and your family have good-enough social networks but you still need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I have the social contact I need and want, and my children spend time with other children and are developing social skills</b></p><ul><li>Your children spend time with peers and friends and have or are developing appropriate social skills and positive appropriate friendships for their age</li><li>Friends, neighbours or wider family meet your needs for support and company</li><li>You are reasonably settled living where you are and have access to places of worship or other community services or facilities that are important to you</li><li>Choose 9 if you need occasional support in this area.</li><li>Choose 10 if you and your children have the social contact you want without support from a service</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 5 you are increasingly finding ways to improve positive social contact and support</li><li>10 will look different for different people, but your children are mixing with others so they are able to develop social skills and you have support from family, friends and community</li></ul>';
        oat.Long_Description__c = '<p>This scale is about you as a parent having the people, social contact and support you need and want, and your children being able to make positive friendships and develop social skills through spending time with other children. It is also about feeling settled and happy where you live and having access to places of religious worship or other facilities important to you and your family.</p>';
        oat.Name = 'Social networks';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated some of the time';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I feel confident about making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Family, friends, social life, community';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FSINAA4';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We don’t have a family routine and our home is chaotic. I don’t see that as a problem</b></p><ul><li>Either there is no family routine or the current one is having a negative effect on your children. They don’t have a regular bedtime or meals or get to where they need to be on time, or don’t wash enough or have clean, suitable clothes to wear</li><li>Your home is not clean enough and is too chaotic to support a positive family routine. There may be no food in the kitchen, for example, or you are relying on older children to look after younger children without appropriate support</li><li>Choose 1 if you don’t see this as a problem.</li><li>Choose 2 if you have moments of acknowledging problems about the lack of routine but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children need a better family routine but I don’t know how to make that happen</b></p><ul><li>As 1-2 but you recognise that the current situation is not working for your children. You probably have someone giving you advice on how to change things, but you may be feeling criticised and might not want to do things their way</li><li>Choose 3 if you occasionally accept help.</li><li>Choose 4 if you accept help more consistently but you are not yet taking the initiative yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to create a positive routine for my family</b></p><ul><li>You are trying to put supportive routines in place, such as sticking to regular meal- or bedtimes, getting your home more organised or doing things together as a family</li><li>Your children may rebel against the changes so things feel worse for a while</li><li>Choose 5 if you quickly slip back to old ways.</li><li>Choose 6 if you stick longer with new approaches but have not yet found what works to establish a positive routine</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My family has a positive routine but there are a few difficult areas</b></p><ul><li>There are some problems but the family has a clear sense of routine. Your children eat at least one meal at a regular time each day, wash enough and get up at a regular time on weekdays. Your home is mostly clean and organised enough</li><li>You manage to do some things together as a family most weeks</li><li>Choose 7 if there are still some problem areas. Choose 8 if your children’s basic needs are met but you need support to maintain a positive family routine</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My family has a positive routine that supports us all</b></p><ul><li>Your children have regular meals, get up at a regular time and get to where they need to be during the day. They are clean enough, have suitable clothes and get enough sleep. The house is clean and organised enough, with food in the kitchen</li><li>Exactly how you achieve this will depend on your culture. The important thing is that your children’s basic needs are met and that you do some things together</li><li>Choose 9 if you need occasional support with your family routine.</li><li>Choose 10 if you are able to maintain a positive routine well enough without support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you consistently accept support so things are not getting worse</li><li>From 5 you are increasingly learning for yourself how to establish a supportive family routine</li><li>By 8 your home is clean and organised enough to support a positive family routine and your children mostly have regular meals, enough clean clothes and a regular weekday bedtime/getting-up time</li></ul>';
        oat.Long_Description__c = '<p>This scale is about a supportive weekday routine so your family can all get to school, nursery or work on time and your children have regular meals, suitable clothes and are clean enough. This includes making sure your home is clean and organised enough, and encouraging teenagers to take responsibility for their routines. It is also about doing some things together, such as eating meals, watching TV, going to the park or other activities.</p>';
        oat.Name = 'Family routine';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated some of the time';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Bedtime, getting up, mealtimes, basic care, doing things together';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Family Functioning';
        oat.Id = 'a154a000000FSFsAAO';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I don’t feel there is a problem with boundaries or behaviour though I know others are concerned</b></p><ul><li>Your children’s behaviour and/or yours causes difficulties, your family is in trouble with the law, or others have raised concerns about your children’s behaviour</li><li>Your children may feel there are no rules or that the rules are too strict or unfair</li><li>They may be copying some difficult behaviour from the way you behave at times</li><li>Choose 1 if you feel there isn’t a problem with your children’s behaviour.</li><li>Choose 2 if you have moments of acknowledging problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children’s behaviour is a problem – I need help to deal with them</b></p><ul><li>Your children’s behaviour causes difficulties or your family is in trouble with the law and you know this can’t go on. You may be afraid to tackle bad behaviour because of how they will react, or don’t know how to change your own behaviour</li><li>Choose 3 if you are sometimes open to help.</li><li>Choose 4 if you consistently accept help but are not yet taking the initiative to improve things for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am learning about appropriate boundaries and how to maintain them</b></p><ul><li>Your children’s behaviour causes difficulties but you are learning new ways of dealing with this, maybe through a parenting course. You may be setting clearer boundaries, loosening ones that are too strict, or talking and listening to your children more</li><li>You are trying to set a good example to your children, for example by being considerate to neighbours or teachers or by moderating aggressive behaviour</li><li>Your children may resist the changes so their behaviour may seem worse for a while</li><li>Choose 5 if you have just started doing things differently.</li><li>Choose 6 if you have been trying for a while and are hopeful things will get better</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I set appropriate boundaries and have some skills to help my children keep within them but there are some difficult areas</b></p><ul><li>You are mostly able to manage but there are some problems. If there is another parent/carer, you are working out how to give your children a consistent message</li><li>Choose 7 if there are still some problem areas.</li><li>Choose 8 if you have appropriate boundaries in place, are not involved in any anti-social or criminal behaviour, and deal effectively with any incidences involving your children, with support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I am able to maintain effective boundaries and deal effectively with any problems</b></p><ul><li>You have firm, fair boundaries within the family that work most of the time. You adapt these as your children grow up, anticipate problems and find ways around them</li><li>You are consistent and mostly feel able to deal with difficult behaviour</li><li>You are not involved in anti-social or criminal behaviour. Perhaps your children sometimes make bad choices but you can deal with this effectively</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if you are able to maintain effective boundaries without support or only have babies or very young children</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 4 you are consistently accepting help so any antisocial, risky or illegal behaviour is not getting worse</li><li>By 6 any problematic behaviour is reducing</li><li>By 8 your family is not regularly involved in crime or antisocial behaviour or taking inappropriate risks and you provide appropriate boundaries for your children, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about giving your children clear boundaries so that they understand what is expected of them and the consequences of negative behaviour. It is about being a positive role model through your own behaviour, and dealing with difficulties constructively. If your children are still babies or very young and you do not need support with boundaries, place yourself at 10.</p>';
        oat.Name = 'Boundaries and behaviour';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistenly';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Difficult, criminal and anti-social behaviour, maintaining appropriate boundaries';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Financial Resilience';
        oat.Id = 'a154a000000FSO1AAO';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We don’t have a stable, adequate home and/or enough money to buy food and other basics – there’s nothing I can do about it</b></p><p>One or more of these apply to your family:</p><ul><li>Your home is temporary or inadequate for your needs</li><li>Your home is overcrowded, has severe damp or lacks basic facilities such as a cooker or heating</li><li>There is a significant risk you will be evicted</li><li>You don’t have money to buy food and other basics. Maybe you are spending your money on alcohol or drugs instead</li><li>Someone is withholding money from you. Maybe you are a victim of financial abuse</li><li>Choose 1 if you never want to talk about these problems.</li><li>Choose 2 if you have moments of acknowledging the problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>We don’t have a stable, adequate home and/or enough money – I want to change this but I don’t know how</b></p><ul><li>Your situation is the same as 1-2 but you acknowledge this is bad for your family. Maybe a crisis or a concerned professional has helped you realise this</li><li>Choose 3 if sometimes you accept support but sometimes you don’t. Choose 4 if you usually accept help but don’t take the initiative to sort things out for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to sort out our housing and finances but it’s hard</b></p><ul><li>If your housing is not adequate, you are making an effort to improve the situation. If you are waiting to be rehoused, you are trying to manage better</li><li>If you don’t have enough money for basics, you are sorting out benefits and/or taking more responsibility for managing your money</li><li>Choose 5 if you have just started taking action for yourself or give up easily. Choose 6 if you stick to things for longer but have not yet found what works</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>Our home is secure and adequate for our needs and we usually have money for food and basics but there are a few problems</b></p><ul><li>Your home is adequate for your needs and there is no risk of eviction, with support. However, you still run into problems with money</li><li>You are getting the benefits you are entitled to and, if you have debts, you are making enough repayments to prevent threats or court action</li><li>Choose 7 if there are still some problems.</li><li>Choose 8 if your home is secure and you mostly manage on what you have but need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>Our home is secure and adequate for our needs and we manage on our income</b></p><ul><li>Your home is adequate for your needs and there is no risk of eviction</li><li>You are managing your money and make positive choices about how you spend it so you can pay your bills, cover the basics, and maybe even save a little</li><li>You are making regular repayments on any debts so they are not increasing</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if your home is secure and adequate and you manage on your income without support from a service</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 there is no immediate or severe risk of homelessness and your family mostly has heating, light and enough food</li><li>From 5 you are starting to take responsibility and action for yourself</li><li>Being at 8 or above means you have secure accommodation and an income and are covering the basics well</li><li>enough</li></ul>';
        oat.Long_Description__c = '<p>This scale is about providing your children with the security of a stable home that is adequate for your needs and</p><p>managing the finances you need to care for them. It covers whether you are able to manage financially and pay your bills regularly, including your mortgage or rent, without any risk of losing your home. It is also about how you spend the money you have so that you provide for your family’s basic needs</p>';
        oat.Name = 'Home and money';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Paying bills and rent, a secure and adequate home';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Employment';
        oat.Id = 'a154a000000FSVbAAO';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I have no chance of getting into work and I don’t see this as a problem</b></p><ul><li>You don’t feel you have any chance of getting into work, now or in the future</li><li>You are resigned to your family living on out-of-work benefits and don’t see change as possible</li><li>You don’t see the point of looking at options for the future</li><li>Choose 1 if you don’t acknowledge this as a problem.</li><li>Choose 2 if you have fleeting moments of thinking about change but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I would like to get work but I don’t know where to start</b></p><ul><li>You are thinking about the possibility of working but the barriers seem huge</li><li>You are uncertain about what you want but are exploring how to move forward with the help of a service</li><li>Choose 3 if you sometimes accept help but sometimes you miss appointments.</li><li>Choose 4 if you accept help more consistently and mostly turn up for appointments but don’t take the initiative to improve things for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am changing things so that I can move off out-of-work benefits and find a job in the future but it’s hard</b></p><ul><li>You are starting to believe that you can find and hold down a job that works for you</li><li>You are trying to overcome barriers to finding work. For example, you may be trying to get up earlier, make your home life more supportive or learn new skills</li><li>You are developing ideas of the work you could do and starting to move towards it. You may have joined a back-to-work scheme or started volunteering or work training</li><li>Choose 5 if you have only just started believing you can work and haven’t acted on it yet.</li><li>Choose 6 if you are becoming proactive in making it a reality</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am mostly ready and able to work but I still need support in this area</b></p><ul><li>You have a realistic idea of the work you would like and are trying to find a job. You are developing skills to help you achieve this and/or making your home life more conducive to work, but need support from a service</li><li>You may have taken on short-term or occasional work already but do not yet hold down a regular job</li><li>Choose 7 if there are still some problem areas that need to change.</li><li>Choose 8 if you are ready for work but just need support in finding a job</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>At least one parent in my family is now in regular work, if appropriate</b></p><ul><li>You, and/or your partner, are in regular work and your family no longer relies so heavily on out-of-work benefits</li><li>You are able to meet the expectations of your employer and your workplace</li><li>You are developing clear goals about your working future</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if at least one parent is in work and you do not need support, or if you are a single parent on long-term disability or equivalent benefits, have very young children or cannot move towards work for other reasons</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 1–4 you cannot see a way out of living entirely on out-of-work benefits but by 4 you consistently accept support</li><li>From 5 you can see other options and are increasingly trying ways to move towards a working future</li><li>By 8 you are ready to work and may be volunteering, have occasional jobs or be in a back-to-work programme</li></ul>';
        oat.Long_Description__c = '<p>This scale is about you as a parent preparing to work and reducing your family’s reliance on out-of-work benefits. This includes getting organised, learning new skills and persevering with training, volunteering, work experience and job hunting until you find the right work for you. If you are a single parent on long-term disability or equivalent benefits, have very young children or are unable to move towards work for other reasons, you are at 10.</p>';
        oat.Name = 'Progress to work';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m starting to make changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Stability at home, work skills, work training, job hunting';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000FX2jAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 I am occasionally fed up with being alone or with people who don’t help me</b></p><ul><li>As for 1, except that you occasionally acknowledge that your relationships are not as you would like them to be, but you will not accept help</li></ul><p><br></p><p><b>1 I am always alone or with people who are a negative influence and I will not discuss this</b></p><ul><li>You are isolated or only spending time with people who are not a helpful influence, perhaps within a street, using and/or offending community</li><li>Your relationships may be exploitative or lacking in trust or regard</li><li>You don’t see this as a problem or won’t discuss it with workers</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I am talking to one or more people I can trust</b></p><ul><li>You are mostly on your own or with people who do not help you to make progress</li><li>You consistently go along with support but do not take the initiative</li></ul><p><br></p><p><b>3 I am isolated or the people around me aren’t good for me and I want some help</b></p><ul><li>You don’t want to be so isolated or you realise the people you spend time with are an unhelpful influence or exploitative</li><li>You sometimes accept help but give up easily</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am doing things to build a positive social network</b></p><ul><li>If your friendships revolved around alcohol, drugs or other unhelpful behaviour, you are taking steps to move on from them and meet new people, but it’s hard</li><li>You may feel isolated or rely on workers you trust in the service</li></ul><p><br></p><p><b>5 I know I need to find positive relationships, but it feels hard</b></p><ul><li>You want to be around people who support positive choices</li><li>You don’t yet know how to go about this and/or need support in recognising unhelpful relationships</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I have positive contact with people but need help to maintain this</b></p><ul><li>You mostly have enough positive contact with people but there are still problems and you need support to maintain and build positive contacts</li></ul><p><br></p><p><b>7 I am learning what works for me with social networks, friends and family</b></p><ul><li>You have positive contact with people other than workers but need help to learn who you can trust. You may recognise that some past contacts were unhelpful</li><li>You may be taking steps to re-establish contact with family, if appropriate</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I feel connected and supported and I don’t need help in this area</b></p><ul><li>You have the level of contact you need and want with friends, family and others</li><li>If you are in contact with family, your relationship is healthy enough and you meet any responsibilities</li><li>towards dependents</li></ul><p><br></p><p><b>9 I mostly feel connected and supported but occasionally need support</b></p><ul><li>As for 10, but you still need support from the service when difficulties arise</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 at least one person supports your positive life choices</li><li>If you have had a negative peer group, you are moving away from them by 6</li><li>By 8 you have a positive social network but need help to maintain it. 10 will look different for different people but includes having positive contact with friends, family, colleagues or others in a community</li></ul>';
        oat.Long_Description__c = '<p>This scale is about feeling connected and having people in your life – friends or family, work colleagues, or</p><p>people with whom you share interests, community or culture. It includes how you cope in social situations and finding out who you can trust. Whether you start your journey mostly on your own or with people who hold you back, you end it with people who support you positively.</p>';
        oat.Name = 'Social networks and relationships';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Friends, family, community, people who support you';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000FWwgAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>We are isolated. I don’t want to talk about it</b></p><p><br></p><ul><li>You have little helpful support from family or friends and your children don’t spend time with friends or positive peer groups to develop their social skills</li><li>Perhaps you are a long way away from family and/or friends, no one around speaks your first language or you have been threatened or feel that your family is not welcome because of drugs, domestic abuse, disability or complaints about you; or</li><li>The people you are mixing with are a negative influence on the family – perhaps because they drink, are involved in crime or behave inappropriately</li><li>Choose 1 if you can’t face thinking about this.</li><li>Choose 2 if you have moments of concern or of acknowledging problems but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>We are isolated. I’m accepting support so we can start to feel more at home here</b></p><p><br></p><ul><li>The situation is the same as 1-2 but you acknowledge that you and/or your children are isolated or mixing with people who have a negative influence on you</li><li>Choose 3 if you accept help sometimes but often you don’t.</li><li>Choose 4 if you accept help more consistently but you still don’t try to sort this out for yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>We are getting to know people or seeing more of friends or family</b></p><p><br></p><ul><li>You are trying to connect with people locally and/or to see more of family or friends further away, and finding out about local facilities that matter to you</li><li>You are thinking about your children’s social networks – whether they have positive friendships and opportunities to develop social skills</li><li>If there are harassment or bullying issues you are trying to sort these out, with help</li><li>Choose 5 if you give up easily.</li><li>Choose 6 if you feel more confident and motivated. Getting to know people may be hard so you may need extra support</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My family has social contact and connections but we need support in this area</b></p><p><br></p><ul><li>Your children have positive friendships and spend time with other children</li><li>You have friends, neighbours or wider family you spend time with and maybe people you can call on for support, favours and childcare. You may have joined in some local activities and met new people but don’t yet feel confident with them</li><li>You have addressed any harassment or bullying issues but still need support</li><li>Choose 7 if there is more that needs to improve.</li><li>Choose 8 if you and your family have good-enough social networks but you still need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I have the social contact I need and want, and my children spend time with other children and are  developing social skills</b></p><p><br></p><ul><li>Your children spend time with peers and friends and have or are developing appropriate social skills and positive appropriate friendships for their age</li><li>Friends, neighbours or wider family meet your needs for support and company</li><li>You are reasonably settled living where you are and have access to places of worship or other community services or facilities that are important to you</li><li>Choose 9 if you need occasional support in this area.</li><li>Choose 10 if you and your children have the social contact you want without support from a service</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 5 you are increasingly finding ways to improve positive social contact and support</li><li>10 will look different for different people, but your children are mixing with others so they are able to develop social skills and you have support from family, friends and community</li></ul>';
        oat.Long_Description__c = '<p>This scale is about you as a parent having the people, social contact and support you need and want, and your children being able to make positive friendships and develop social skills through spending time with other children. It is also about feeling settled and happy where you live and having access to places of religious worship or other facilities important to you and your family.</p>';
        oat.Name = '4. Social networks';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Family, friends, social life, community';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FX20AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2. I am fed up with how my life is, but nothing can be done about it</b></p><ul><li>You acknowledge moments of dissatisfaction with how you are living but if help is offered, you do not accept it, engage meaningfully or address the possibility of change</li></ul><p><br></p><p><b>1. I am not interested in talking to workers or making changes</b></p><ul><li>You will not talk to workers about your situation or make any changes</li><li>You may be frightened of change or may not believe it is possible, or a mental health issue or drug or</li><li>alcohol misuse is affecting your ability to see things clearly</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4. I will go along with help if other people can stop my life being like this</b></p><ul><li>You mostly accept help, go along with suggestions, and attend appointments</li><li>You may have a sense of what you don’t want – but not what you do want</li></ul><p><br></p><p><b>3. I have had enough of living like this and want things to change</b></p><ul><li>You are not happy with how things are and want something to be done about it but don’t follow through.</li><li>You may agree to appointments but mostly miss them</li><li>Maybe you don’t believe things can change, so you don’t make the effort to try</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6. I am doing things to help me get to where I want to be – with help</b></p><ul><li>You are trying out new things or addressing issues, but it’s hard</li><li>You have some sense of how you want your life to be</li><li>It can be tempting to go back to familiar ways, so it helps to have support</li></ul><p><br></p><p><b>5. I see that I need to do things myself to get to where I want to be</b></p><ul><li>You are starting to take the initiative rather than relying on workers’ suggestions</li><li>You see that you may be able to change your situation by behaving differently</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8. I am getting there and I know it is down to me, but I want support to keep it up</b></p><ul><li>Your choices and behaviour mostly help you towards what you want in life</li><li>Life may not feel easy and you experience setbacks and need support</li></ul><p><br></p><p><b>7. I am seeing some benefits from the positive choices I am making</b></p><ul><li>You can see that when you make positive choices, for instance speaking to people politely and openly, it mostly has a good effect</li><li>You may feel some control over your life and be excited about new possibilities</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I am motivated and take responsibility for myself, independent of the service</b></p><ul><li>You are confident and motivated about maintaining a positive way of life</li><li>You have a support network of family and/or friends who provide help if needed</li></ul><p><br></p><p><b>9 Mostly I feel confident in my choices, I just need a bit of help now and then</b></p><ul><li>You mostly feel confident and in control of your life, even with setbacks</li><li>You can judge when you need support – but letting go may feel frightening</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 3 you are accepting help, which means change is becoming possible</li><li>By 6 you are taking the initiative and doing things to help yourself, at least sometimes</li><li>From 7 you are relying less on other people to motivate and support you</li></ul>';
        oat.Long_Description__c = '<p>This scale is about your feelings about change – whether you are ready to make changes, going along with</p><p>help, or actively creating change yourself. Think about where you are on this scale at the moment. If things</p><p>change a lot from day to day, or hour to hour, then where are you right now?</p>';
        oat.Name = 'Motivation and taking responsibility';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Your internal journey';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Community Participation';
        oat.Id = 'a154a000000FX7eAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 The courts or police are causing me problems</b></p><ul><li>As for 1, but you occasionally acknowledge offending and related problems, but do not accept or engage with help that is offered</li></ul><p><br></p><p><b>1 I am not able or not willing to discuss offending</b></p><ul><li>Workers know or suspect you are offending but you will not talk about this</li><li>You may not acknowledge there is a problem or may deny responsibility</li><li>You may have outstanding court appearances or be subject to other orders but you are not dealing with any outstanding consequences of your offending</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I am going along with help to sort out issues with the law</b></p><ul><li>You mostly comply with the courts or any legal orders, where you need to</li><li>You mostly go along with help to reduce your offending but do not take the initiative</li></ul><p><br></p><p><b>3 I wish I didn’t have these problems</b></p><ul><li>You are unhappy with the negative consequences of your offending or anti-social behaviour and sometimes accept help with these</li><li>You do not accept responsibility or address the causes of the offences and may blame others or  circumstances</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am taking steps to stop offending and/or deal with the consequences of offending</b></p><ul><li>You are reducing or stopping offending</li><li>You are taking the initiative to comply with the terms of any legal orders</li></ul><p><br></p><p><b>5 I want to stop offending</b></p><ul><li>You are facing up to your offending and actively considering changes to the way you live, and avoiding certain people, to help you stop any criminal activity</li><li>You can see the consequences of involvement with the police or legal system</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I am staying within the law, with support</b></p><ul><li>You are not offending, but you need ongoing support to keep this up</li><li>You are actively dealing with ongoing consequences of any past offending</li><li>You have strategies for avoiding high-risk situations and mostly use them. Your lifestyle supports you in not offending</li></ul><p><br></p><p><b>7 I understand how and why I get in trouble and how to stop for good</b></p><ul><li>You are becoming aware of how and why you get into trouble and how to avoid high-risk situations or people. You are learning to deal with triggers and manage your behaviour, for instance, through anger management skills </li><li>You may occasionally commit minor offences but you learn from this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I am not offending and don’t need support in this area</b></p><ul><li>You are not at risk of offending and workers acknowledge this</li><li>You have no outstanding issues with the police or courts, or you are complying with these effectively without support from the service</li></ul><p><br></p><p><b>9 I am not offending, with occasional support to maintain this</b></p><ul><li>As for 10, but you need occasional help to avoid offending, anti-social or nuisance behaviour</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 6, your offending is reducing</li><li>By 8, you have stopped offending but need support to maintain that</li><li>If you have a history of offending, 10 means you are able to avoid offending and conflict and choose to do so. You no longer need support to maintain that</li><li>If you have never offended, you are at 10</li></ul>';
        oat.Long_Description__c = '<p>This scale is about changing the way you live, if necessary, to stop any offending or anti-social behaviour and to relate to people in ways that avoid conflict. This includes not getting involved in theft, fights, domestic violence, drug-dealing, drink-driving and other behaviour that is against the law. It covers both current offending and how you deal with any consequences of past offending and orders of the court.</p>';
        oat.Name = 'Offending';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Not breaking the law – including avoiding violent conflict, drug-dealing and domestic abuse – dealing with legal issues';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000FX5YAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 My health is bad but nothing will help</b></p><ul><li>As for 1, but you occasionally discuss health briefly or ask for help but may then refuse treatment if offered.</li><li>Perhaps you don’t believe it is possible to feel better</li></ul><p><br></p><p><b>1 My physical health is bad but I don’t want to talk about it</b></p><ul><li>You don’t go to the doctor even for pressing health problems</li><li>You may be behaving in ways that risk your health, including sexual risk-taking</li><li>You don’t want to discuss health issues, or it feels too hard to even think about</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I will go along with treatment provided</b></p><ul><li>You see a doctor regularly if needed, usually if someone else organises it</li><li>You may be feeling better as a result of your treatment</li></ul><p><br></p><p><b>3 I want help for pain or illness</b></p><ul><li>You want to do something about any pain or discomfort you are in, and will see a doctor or nurse if someone else takes you – otherwise you probably won’t go</li><li>Although you are getting help with major problems, you ignore less severe ones</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am doing some things to look after my physical health</b></p><ul><li>You attend health appointments on your own – or with friends or family</li><li>You try some healthy changes and may start to get a sense of what works for you</li></ul><p><br></p><p><b>5 I need to take some responsibility for looking after my health</b></p><ul><li>You want to look after your health, but are not sure how to do it</li><li>You initiate discussions about health and actively explore options</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I mostly look after my health but need support to maintain this</b></p><ul><li>You go to the doctor and dentist as needed and take any medication prescribed</li><li>You have a reasonably healthy diet, some exercise and reasonable sleep routines but need support to keep this going</li></ul><p><br></p><p><b>7 I am learning to look after my health</b></p><ul><li>You see a link between healthier choices and feeling better and are more motivated to care for your health.</li><li>You may be feeling physically healthier</li><li>Change is difficult and you often slip back, so you need support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I look after my physical health and my lifestyle is reasonably healthy</b></p><ul><li>You mostly eat enough healthy food, take exercise and minimise unhealthy habits</li><li>You are managing any conditions as well as possible to maximise health</li></ul><p><br></p><p><b>9 I am learning to maintain healthy habits and taking care of my physical health</b></p><ul><li>As for 10, but you need occasional support to maintain healthy habits</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 3 you are getting treatment for any major health issues</li><li>At 6 you start to take some initiative with health issues or healthy lifestyle</li><li>At 10 you may or may not feel physically well, but are mostly doing what you can to be as healthy as possible and manage any health issues without support</li></ul>';
        oat.Long_Description__c = '<p>This scale is not about how good your physical health is but about how well you look after your health and</p><p>manage any health conditions you have. This includes going to the doctor and dentist as needed and following treatment advice. It is also about looking after your health by eating healthy food, taking exercise and trying to sleep well.</p>';
        oat.Name = 'Physical health';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Doctors, treatment, healthy lifestyle';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FX5sAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 I don’t like feeling like this but there is nothing anyone can do about it</b></p><ul><li>As for 1, you often feel pretty bad. You sometimes discuss symptoms but do not engage effectively with any help</li></ul><p><br></p><p><b>1 I often feel pretty bad but I don’t want to talk about it</b></p><ul><li>Symptoms such as anxiety, depression, psychosis, panic attacks, low self-worth or suicidal thoughts have a severe effect on your life, but you don’t want to discuss it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I am going along with help in relation to my mental or emotional health</b></p><ul><li>You feel very anxious, stressed or depressed or have psychotic symptoms and this affects your life and ability to move on</li><li>You accept help fairly consistently and go along with suggestions to feel better but don’t take the initiative</li></ul><p><br></p><p><b>3 I want to get out of this hole and feel better</b></p><ul><li>You experience high anxiety, stress, depression or psychosis and want help</li><li>You may make appointments but often do not attend, and if you are on medication for a mental health issue, someone else has to make sure you take it</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am trying ways to improve my emotional well-being</b></p><ul><li>You are doing things to lift your mood or manage stress or mental health symptoms, and avoiding things that have a negative effect, with support</li><li>You are going along with any prescribed treatment for mental health problems</li></ul><p><br></p><p><b>5 I believe that there are things I can do to feel better</b></p><ul><li>You believe you can find ways to feel better and/or reduce the effect of any mental health problem. You may see a link with drugs or alcohol if this is an issue for you</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I am getting on with my life, with support</b></p><ul><li>You use strategies to feel OK and deal with stress or manage symptoms, but it can be hard, so you need ongoing support</li><li>Strong emotions or mental health issues are unlikely to trigger major problems</li><li>You take prescribed medication without support and may be exploring treatments</li></ul><p><br></p><p><b>7 I am mostly on an even keel. I have ways to help myself when things feel tough</b></p><ul><li>You understand how stress and emotions can get in the way of sorting your life out</li><li>You make better choices and can see the effect of this on how you feel</li><li>If you have a mental health problem, you understand the symptoms and know what can trigger a relapse and what helps you feel better</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I feel fine – emotional and mental health are not a problem for me</b></p><ul><li>You feel reasonably positive and can cope with life’s ups and downs without support from a service, and any help is from family and/or friends</li><li>If you have a diagnosed mental health problem, you manage symptoms well</li></ul><p><br></p><p><b>9 I mostly feel fine – I just need support now and then</b></p><ul><li>As for 10, but you may not feel ready to let go of support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 5 you are increasingly managing your emotional and/or mental health for yourself</li><li>By 8, you are mostly feeling stable and OK and have access to any treatment you need,</li><li>with support</li><li>At 10, you can maintain this without the support of a specialist service. If you have a mental health condition, this may still be the case but you are managing it well</li></ul>';
        oat.Long_Description__c = '<p>This scale is about how you feel most of the time and how you manage any difficult emotions and/or mental health issues, whether diagnosed or not. Perhaps you experience panic attacks, have symptoms of  posttraumatic stress or use self-harm to cope with difficult feelings. Perhaps you need medication, treatment or other support. Perhaps there are things you could do to feel better.</p>';
        oat.Name = 'Emotional and mental health';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'How you feel, dealing with anxiety, stress, depression, trauma or strong emotions';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Tz4AAE');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Personal and Family Safety';
        oat.Id = 'a154a000000FWwHAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>People say my children are not safe. I wish they would stop interfering</b></p><p><br></p><ul><li>Your children are not safe for one or more of these reasons:</li><li>They are left unsupervised and at risk of accidents</li><li>They are getting in trouble with crime or drugs or are victims of crime</li><li>They are victims of, or at risk of, physical, sexual or emotional abuse</li><li>They are victims, or perpetrators, of bullying or racial harassment</li><li>Your behaviour, older siblings or people who visit put them at risk</li><li>They or their close friends often put themselves in risky situations</li><li>Choose 1 if you can’t face thinking about this.</li><li>Choose 2 if you have moments of concern or of acknowledging your children are not safe but don’t accept support</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children are not safe enough. I go along with some support in this area</b></p><p><br></p><ul><li>A crisis, accident or social worker has made you aware that your children are not safe in any of the ways described under 1-2, or you have realised for yourself. It may feel awful to acknowledge this but you now accept help so things can change</li><li>You may feel unsafe as well due to bullying, racial harassment, domestic abuse or other crime</li><li>Choose 3 if you occasionally allow others to help.</li><li>Choose 4 if you accept help more consistently so there are no immediate risks but you don’t take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am changing things so that I can protect my children and myself</b></p><p><br></p><ul><li>Perhaps you are trying to spend more time at home, check that younger children are safe with older children, find new childcare or set rules about when children can go out and where they can go</li><li>You are trying to change your own behaviour if this was affecting your children’s safety</li><li>If there has been domestic abuse, bullying or racial harassment, you are making changes. If your children have been abused you are getting help for them</li><li>Choose 5 if you have just started trying to make changes.</li><li>Choose 6 if you have been trying for a while but have not yet found what works and need support to keep going</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My children and I are mostly safe but there are a few issues</b></p><p><br></p><ul><li>You put strategies in place to keep your children safe both at home and outside</li><li>If there have been safety issues such as domestic abuse or inappropriate visitors, this has now stopped</li><li>You talk to your children about safety issues appropriate to their age, including accidents, bullying and crime, drugs, alcohol, sexual health and internet risks</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children are safe in your care but you still need some help with managing the situation</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children are safe in my care</b></p><p><br></p><ul><li>You are safe, your home is safe, and the people who visit are safe for your children</li><li>You teach your children about all safety issues appropriate to their age, including accidents, bullying and crime, drugs, alcohol, sexual health and internet risks</li><li>If you have older children you know enough of what they are doing, their peer group is mostly safe, and they are not causing any risks to your younger children</li><li>You think ahead and act straight away if you see a risk to your children’s safety</li><li>Choose 9 if you need occasional support to keep your children safe.</li><li>Choose 10 if your children are safe and you don’t need outside help to keep them that way</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective Parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 1-3 professionals may need to trigger child protection actions, depending on the severity of the issues</li><li>By 4 any immediate safety issues are being addressed</li><li>By 8 there is no domestic abuse in your family, and your children are adequately supervised and safe, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about appropriate supervision, ensuring your home is safe, internet safety, and protecting your children from accidents and risks. It is also about protecting yourself and your children from bullying, racial harassment and domestic abuse.</p>';
        oat.Name = '3. Keeping your children safe';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m just starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Protecting your children, avoiding accidents, bullying and abuse';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000FX6CAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 Occasionally I wish I was doing something meaningful but there’s no way I could</b></p><ul><li>You are occasionally fed up with doing nothing and may talk about this, but not for long and you don’t accept any offers of help with how to use your time</li></ul><p><br></p><p><b>1 I am doing nothing with my time, or it revolves around drugs, alcohol or criminal activity</b></p><ul><li>You are not in paid or voluntary work, training, education or other meaningful activity and don’t want to talk about how you use your day</li><li>Your life is too chaotic to have a routine and may revolve around drugs or alcohol</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I am going along with actions that others suggest</b></p><ul><li>You follow through on actions agreed in keywork, with lots of encouragement</li><li>You may take part in activities where you live but are unlikely to go elsewhere</li><li>You know what you don’t like, but you don’t really know what you do want to do</li></ul><p><br></p><p><b>3 I don’t want to spend my days doing nothing or in chaos anymore</b></p><ul><li>You are doing little or nothing with your time but are fed up with living like this</li><li>You want to change but don’t have a sense of what else is possible</li><li>You agree to do things, but easily lose motivation and don’t follow through</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am getting clear about what to do and taking steps towards that</b></p><ul><li>You are trying new things and can set and meet short-term goals, with support</li><li>You find you can sustain interest and activities, though you need support</li></ul><p><br></p><p><b>5 I know I need to take the initiative to change things</b></p><ul><li>You are actively considering the future and the options available to you</li><li>You have some sense of the direction you want to go in, but it’s hard to put that into practice so you need support to talk about your options</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I am using my time well but need support to maintain that</b></p><ul><li>You are engaged in regular activities that work for you</li><li><span style="">You may encounter difficulties but with support you </span>can learn from these</li></ul><p><br></p><p><b>7 I am learning what works for me and getting closer to where I want to be</b></p><ul><li>You are discovering what works for you and may be excited at new achievements</li><li>You may be addressing things that hold you back, for instance, literacy</li><li>You run into problems at times and you need help to get through</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I use my time well and don’t need any extra help</b></p><ul><li>You are engaged in regular activities that work for you, for instance, paid or voluntary work or training</li><li>You can move between jobs or choose and organise new activities without the service – friends, family and colleagues provide you with any support you need</li></ul><p><br></p><p><b>9 I use my time well but occasionally need support with it</b></p><ul><li>As for 10, but you need help occasionally, for instance if circumstances change or a course comes to an end and you need to make new arrangements</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 1–4, you have no responsibilities or structured daily activities or are neglecting them. By 3 you are accepting help to address this</li><li>By 8, you regularly do something meaningful with your time, which probably includes structured weekday activities</li><li>A 10 will look different for different people, depending on responsibilities, age and health</li></ul>';
        oat.Long_Description__c = '<p>This scale is about how you spend your time – whether you are regularly involved in activities that are interesting and satisfying and if not, how clear you are about what you would like to do. It’s also about building the skills and confidence you need to do these things. For some people this will mean taking steps towards education, training, volunteering or employment.</p>';
        oat.Name = 'Meaningful use of time';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Structured daily activities, interests,\r\nlearning, work or volunteering';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000fQ3AAI');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Financial Resilience';
        oat.Id = 'a154a000000FX2ZAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>2 My money is a mess but nothing can be done about it</b></p><ul><li>As for 1 except that you sometimes acknowledge there are issues but are unable or unwilling to prioritise or understand what you need to do</li></ul><p><br></p><p><b>1 My money is in crisis but I am ignoring the situation</b></p><ul><li>You may be entitled to benefits but not claiming, and/or your rent is not paid</li><li>You may have extensive debt or problems with the courts or loan sharks</li><li>Maybe you spend any money you get in one area, for example drugs</li><li>You may feel helpless or exploited, but you are not willing to talk about it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>4 I will go along with help if workers can sort out my money for me</b></p><ul><li>You are receiving the correct benefits at this point, if not before</li><li>You consistently accept help with money issues or are open to talking about this</li></ul><p><br></p><p><b>3 I don’t want these money problems</b></p><ul><li>You accept help, for example with debt or benefits, but often miss appointments</li><li>You don’t want money problems but you may blame others rather than yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>6 I am sorting out my money and trying to manage with what I’ve got. It’s difficult</b></p><ul><li>You are addressing issues such as debt or financial exploitation, you take responsibility for benefit claims yourself, and you mostly pay any rent arrears</li><li>You are aware of your budget, though you often can’t stick to it</li></ul><p><br></p><p><b>5 I need to sort out my money, debts and benefits, and have plans in place</b></p><ul><li>You are starting to understand and take responsibility for your financial situation</li><li>You attend appointments and allow a service to contact debtors if appropriate</li><li>You may need a lot of support at this stage to face up to a difficult situation</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Believing (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>8 I manage my money OK but sometimes need help</b>\n</p><ul><li>You can plan ahead and manage your money OK and have no major issues\nIt helps to have support in this area as you are likely to experience setbacks\n</li></ul><p><br></p><p><b>7 I have no major issues with money and am learning to manage, with support</b>\n</p><ul><li>You have no major money problems and follow payment plans for any debts\nYou are learning how to keep in control of your money but it&#39;s hard to plan ahead</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Learning (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>10 I can manage my money well enough and don’t need support with it</b></p><ul><li>You understand what benefits you can get and how to maintain a claim, or you are in work and managing your wages well. If you have debts, you are repaying them</li><li>You can forward plan, deal with crises and manage your money without support</li></ul><p><br></p><p><b>9 I manage my money well enough, with occasional support</b></p><ul><li>As for 10 but you need occasional support to get back on track if things get difficult</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Self-reliance (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you are receiving the correct benefits, if not before</li><li>By 6 you are taking action to sort out benefits, debts or other money issues</li><li>By 7 any debts are not getting worse</li></ul>';
        oat.Long_Description__c = '<p>This scale covers issues in relation to you and money. It can include debt, not paying bills or maintenance and the effect of any money issues on you and your life. If you have no issues with money, simply mark yourself at 10 and move on to the next area.</p>';
        oat.Name = 'Managing money and personal administration';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck (1)';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Self-reliance (10)';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Stuck (2)';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'Getting help (3)';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'Getting help (4)';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'Believing (5)';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'Believing (6)';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Learning (7)';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Learning (8)';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Self-reliance (9)';
        oat.Short_Description__c = 'Benefits, budgeting, sorting out debts, savings';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FR1pAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>I often feel very angry or have other strong feelings, or I feel numb a lot</li><li>This makes me hit out at people or things, hurt myself, or it causes other problems</li><li>I don’t want to talk about it or don’t know how to</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, I find it hard to manage strong feelings; but</li><li>I have some help and am talking to someone about it</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>I am trying new ways to manage strong feelings but it’s hard</li><li>I am working with someone I trust to help me with this</li><li>Sometimes I don’t manage to use the new skills I am learning</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I am finding ways to help me manage strong feelings but I need help to stick to this</li><li>If there have been big changes or losses, I am getting help with my feelings about these</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>When I have difficult feelings I can mostly calm down and feel better, so my behaviour doesn’t cause problems</li><li>I can mostly tell people what is going on or find helpful ways to express my feelings</li><li>I have a range of feelings, including pleasant and happy ones</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Resilient';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Managing difficult feelings</li><li>Talking to people</li><li>Expressing what you feel</li></ul>';
        oat.Long_Description__c = '<p>Strong feelings are a part of life. They can be important because they may tell us and other people what matters to us. It is important to be able to express what we are feeling – otherwise it can all just bottle up inside us. But we need to do it in a way that works for us and for other people.</p>';
        oat.Name = '5. Feelings and behaviour';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Accepting help';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'Trying';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Finding what works';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Resilient';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'How you deal with difficult feelings';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Personal and Family Safety';
        oat.Id = 'a154a000000FQh1AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>There is violence or other abuse at home</li><li>There are dangers for me in the house</li><li>I don’t have the supervision I need</li><li>I put myself at risk with drugs, alcohol or sex, or in other ways</li><li>There are no signs of things getting better</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Big concerns';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>There are the same concerns as at the red step, but my parents or carers are trying to make things better</li><li>There are plans in place to make sure I am safe</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Someone is helping me';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>If there has been violence at home this has stopped, or I am protected from it</li><li>I am not supervised well enough for my age sometimes</li><li>I try to keep myself safe but it’s difficult</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'No big concerns';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>There is no violence or other abuse at home</li><li>I am not always supervised well enough for my age</li><li>I usually do what I can to keep myself safe, but not always</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Mostly OK';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>My parents or carers make sure I am safe and help me try new things safely</li><li>I keep myself safe, including any contact with alcohol, drugs and sex</li><li>I know who to trust and how to stay safe on the internet</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Things are good';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>People keeping you safe</li><li>Keeping yourself safe</li></ul>';
        oat.Long_Description__c = '<p>All children and young people need to be safe. This scale is about how safe you are in and out of your home and the extent to which people look out for you. This scale includes how the adults responsible for you protect you from violence and make sure you are safe, and what you do to stay safe. As you get older there is more that you can do yourself to stay safe.</p>';
        oat.Name = '3. Being safe';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Big concerns';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Someone is helping';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'No big concerns';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Mostly OK';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Things are good';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'How safe you are';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FRGyAAO';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I often feel pretty bad or there are problems that may affect my family but I don’t want to talk about it</b></p><ul><li>One or more of the following are the case:<ul><li>You are feeling depressed, self-critical, anxious or hopeless to the extent that it affects your family</li><li>You are experiencing domestic abuse</li><li>You are drinking problematically or using drugs</li><li>You have a mental health problem that is not being treated appropriately</li></ul></li><li>Choose 1 if you can’t face thinking about these problems. </li><li>Choose 2 if you have moments of concern or of acknowledging problems, but you do not accept support</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am going along with help to feel better or to deal with problems that may affect my family</b></p><ul><li>You have similar issues to 1-2, but you acknowledge that there is a problem</li><li>If you have depression or other mental health issues, a drug or alcohol problem, or you are experiencing domestic abuse, you are accepting help</li><li>Choose 3 if sometimes you allow others to help but sometimes you don’t.</li><li>Choose 4 if this is more consistent but you don’t take the initiative to improve things yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting Help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying ways to feel better or deal with mental health or other issues</b></p><ul><li>You are trying to address any problems, for instance getting help for depression, tackling alcohol or drug nisuse or getting out of an abusive situation</li><li>You may be doing things to lift your mood or stabilise your emotions and be avoiding unhelpful ways of coping. You are taking any medication as prescribed</li><li>Choose 5 if it is early days. </li><li>Choose 6 if you have been trying for a while but are not yet finding what works</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I’m learning to manage my emotional and mental well-being, with support</b></p><ul><li>You have made progress with issues that were affecting your well-being. You use strategies to manage stress and feel OK but it can be hard so you need support</li><li>If you have a mental health issue or a drug or alcohol problem, you are managing it well, with support from an appropriate service</li><li>If you have experienced domestic abuse in the past, you have changed the situation and by 8 are no longer exposed to the abuse</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if you have found what works but need support to maintain it</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I feel fine and manage my emotional and mental health well</b></p><ul><li>Your emotional well-being is good and you mostly manage the inevitable difficulties in life and stresses of  parenting, with support from family and friends</li><li>If you have a mental health issue, you are managing your symptoms. You do not use illegal drugs or misuse alcohol and there is no domestic abuse in the family</li><li>Choose 9 if you need occasional support in this area. </li><li>Choose 10 if you feel fine and don’t need support with this</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you are consistently accepting support</li><li>By 8 you are not taking drugs or drinking problematically, there is no domestic abuse and you manage any mental health issues well enough, with support</li><li>At 10 you can maintain this without support or you never had any emotional or mental health issues</li></ul>';
        oat.Long_Description__c = '<p>The scale is about you - how you feel and how you cope with difficulties. If you feel very stressed, aren&#39;t comping, are depressed, anxious or have problems with drugs or alcohol, domestic abuse or mental health, this will affect your family, whether now or later on. And it&#39;s hard on you. This scale will help us discuss what is happening so we know how we can help.</p>';
        oat.Name = 'Your well-being';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few programs still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'How you feel, your mental health, how you deal with problems';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FR2JAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>I find it hard to get on with other people my age. I get left out</li><li>I get into fights a lot or have other problems with my friends</li><li>I don’t want help or I don’t trust people who want to help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, but I am letting someone help me</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>I am having a go at joining in and learning how to make friends</li><li>I am learning how to deal with bullies</li><li>But things don’t always work out well</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I have some good friends and most of the time I can join in</li><li>I can mostly deal with bullies and know who to avoid</li><li>Sometimes I need some extra help with friendships</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I get on well with people my age</li><li>I can make and keep friends easily enough</li><li>I am mostly kind to others and can deal with bullying</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Resilient';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Making friends</li><li>Coping with bullying</li><li>Feeling comfortable with others</li></ul>';
        oat.Long_Description__c = '<p>Everyone needs friends to do things with, to play or chat with, but it’s not always easy to get on with other</p><p>people your age. This scale isn’t about having lots of friends, it’s about how you make friends and about</p><p>feeling comfortable with people your own age, so that you have at least a few people your age that you can share things with and have fun with</p>';
        oat.Name = '6. Friends';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Accepting help';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'Trying';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Finding what works';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Resilient';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'How you make and keep friends';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Physical Health';
        oat.Id = 'a154a000000FR66AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>People say I’m neglecting my children’s health. I don’t want to talk about it</b></p><ul><li>You don’t take your children to the doctor or dentist, except in emergencies</li><li>Your children don’t eat healthy food, have too little exercise or sleep, and may be obese, under-nourished or at risk of health problems later. If you have a baby you don’t know what is needed for healthy development. If you have teenagers, they may be taking risks with their health. You may also be neglecting your own health</li><li>Choose 1 if you don’t see this as a problem. Choose 2 if you have moments of concern over your children’s health but don’t accept support so there is no change</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I know I need to do more to look after my children’s health</b></p><ul><li>The problems at this stage are similar to 1-2. Your children’s lifestyle is not healthy but you recognise there are issues and go along with some support</li><li>Choose 3 if you occasionally allow others to help. Choose 4 if you go along with help more consistently but still rely on others to take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I try to do things to make sure my children are healthy but it’s hard</b></p><ul><li>You take your children for some routine checks but don’t always follow advice. If they are ill you do something about it but are not always sure it’s the right thing</li><li>You may be trying to introduce more healthy food and exercise or ensure healthy development but it often  doesn’t last long </li><li>Choose 5 if you have just started trying new things for yourself or give up easily. Choose 6 if you have been doing this for a while or can keep it up a bit longer</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I’m finding ways of building a healthy lifestyle for my children</b></p><ul><li>You are finding ways to introduce healthy food, exercise or bedtime routines. You may be finding it works best if you do these things, too</li><li>If you have a baby, you are learning how to give it the best start in life. You are teaching older children to take care of their health, including sexual health</li><li>You look after your children when they are unwell and if any of your children has a disability or health condition, you are learning ways of managing it</li><li>Choose 7 if there is still more that needs to change. Choose 8 if your children have what they need to be healthy but you need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children have a healthy lifestyle and receive any medical treatment they need</b></p><ul><li>You look after your children’s health, including treating minor problems at home</li><li>You and your children mostly have enough healthy food, sleep and exercise</li><li>You encourage older children to take responsibility for their health, including sexual health. If you have a baby you are giving it a healthy start in life. If any of your children has a disability or health condition, you keep them as healthy as possible</li><li>Choose 9 if you need occasional support to look after your children’s health. Choose 10 if you look after  your children’s health well enough without support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 -10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 things are not getting worse and you mostly attend appointments</li><li>From 5 you are taking more responsibility for your family’s health</li><li>By 8 your children have what they need to be healthy and any health problems are being addressed, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about how well you are looking after your children’s physical health. It is about doctors, dentists and treatment when they have health problems, plus things that build good health, such as enough healthy food, regular exercise and sleep. For babies it covers breastfeeding where possible and positive weaning for a healthy  start in life. For older children, it is about helping them take responsibility for their own health.</p>';
        oat.Name = 'Physical health';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m starting to try things out';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Doctor, dentist, healthy lifestyle, early development, managing any disabilities';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FR2OAAW';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>I mostly feel bad about myself or get very anxious</li><li>I don’t believe things will be OK</li><li>I can’t say what I need or want so I go along with others</li><li>I don’t have any support with this, or I don’t want it</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, but I have some support with this</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>I am trying ways to feel better but they often don’t work</li><li>I often feel anxious and worry about things</li><li>I try to say what I need and make positive choices but it’s hard</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I mostly feel at ease but sometimes get anxious</li><li>I am finding things that build my confidence but sometimes I need help to put them into practice</li><li>I mostly trust myself and believe things will be OK</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I mostly feel at ease. I don’t worry about things too much</li><li>I feel happy enough to be me and can make positive choices</li><li>I know that I matter</li><li>I know what I am good at and what I enjoy doing</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Resilient';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Knowing that you matter</li><li>Feeling at ease</li><li>Confidence and optimism</li></ul>';
        oat.Long_Description__c = '<p>We all matter and have the right to have our views and needs heard. We are all unique and have something</p><p>to offer the world. It is important to know and to trust that, whatever people may tell us.</p><p><br></p><p>We all need to feel at ease and to trust that things will mostly turn out OK, even if things are not always how we want them to be. When we feel good about ourselves life feels better, and it is easier to feel confident and to make positive choices, rather than just going along with what other people want.</p>';
        oat.Name = '7. Confidence and self-esteem';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Accepting help';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'Trying';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Finding what works';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Resilient';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Feeling at ease, knowing you matter';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Housing';
        oat.Id = 'a154a000000FQghAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>My home is not settled or safe. I worry about having to move suddenly</li><li>I’m not safe in the area or there are big problems with where I live</li><li>I don’t feel comfortable or that I fit in. People don’t listen to me</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Big concerns';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>Like the red step, there are problems with where I live; but</li><li>My parents or carers are trying to sort things out</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Someone is helping me';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>My home is safe and settled. I don’t have to worry about having to move suddenly</li><li>It could be better – maybe it’s damp, cold, things don’t work, the area is not safe or there is not enough space</li><li>I don’t feel people understand and accept me for who I am</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'No big concerns';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I mostly feel at home and settled in the area where I live</li><li>Mostly my home is OK but some things need to change – maybe having more space, things being repaired, being able to have friends round</li><li>People listen when there are problems but I don’t always feel I fit in</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Mostly OK';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I feel settled and at home in the area where I live</li><li>I have the space I need to play and to study and enough privacy</li><li>My home is mostly warm and comfortable</li><li>I fit in and am accepted for who I am. People listen to me</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Things are good';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Feeling accepted</li><li>Feeling you fit in</li><li>Secure and suitable housing and area</li><li>Enough space</li></ul>';
        oat.Long_Description__c = '<p>All children and young people need to feel they are accepted and fit in where they live and to have a stable home to grow up in that is safe and does not get in the way of their development. This is true whether you are living with your family, cared for by a foster family or in a placement. There is space here to discuss all aspects of where you are living now. If you are living with people other than your family, you need to know that they listen to you and respect your cultural background so, whether or not it’s where you really want to be living right now, you feel as at home as possible.</p>';
        oat.Name = '2. Where you live';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Big concerns';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Someone is helping me';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'No big concerns';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Mostly OK';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Things are good';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Feeling at home and liking where you live';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000YlPAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000FR2nAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<ul><li>I find school very difficult or I don’t go much</li><li>It’s difficult to learn or to concentrate</li><li>I don’t have activities I enjoy out of school</li><li>No one is helping me to sort this out</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<ul><li>I find school or learning very difficult or I don’t go much; but</li><li>There is someone trying to work out what I need</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help';
        oat.Journey_Of_Change_Step_3_Description__c = '<ul><li>I find school or learning difficult</li><li>I have some support and I am trying to do things differently; but</li><li>It’s hard and often I want to give up</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying';
        oat.Journey_Of_Change_Step_4_Description__c = '<ul><li>I go to school every day unless I am ill</li><li>I want to do my best and to learn but sometimes it’s difficult</li><li>I know what helps me and I am catching up, with support</li><li>I have some hobbies I enjoy</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works';
        oat.Journey_Of_Change_Step_5_Description__c = '<ul><li>I am learning and doing well</li><li>I go to school every day unless I am ill, and mostly try to do my best</li><li>I do activities that I enjoy such as sport, art or drama</li><li>I like learning new things</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Resilient';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>Doing your best at school</li><li>Staying focused</li><li>Enjoying play and learning</li><li>Being curious and trying new things</li></ul>';
        oat.Long_Description__c = '<p>Everyone wants to do well but sometimes things get in the way of that. Maybe you are not happy at school or there are things that are worrying you. Maybe it is hard for you to stay focused because you are tired or haven’t had breakfast. Perhaps the people in your family don’t see school or learning as important and so you don’t either. Or maybe teachers are concerned about you or you need more help in some areas</p>';
        oat.Name = '8. Education and learning';
        oat.RecordTypeId = '0124a0000004LzOAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'Stuck';
        oat.Score_10_DEX_Equivalent__c = null;
        oat.Score_10_Name__c = null;
        oat.Score_2_DEX_Equivalent__c = '2';
        oat.Score_2_Name__c = 'Accepting help';
        oat.Score_3_DEX_Equivalent__c = '3';
        oat.Score_3_Name__c = 'Trying';
        oat.Score_4_DEX_Equivalent__c = '4';
        oat.Score_4_Name__c = 'Finding what works';
        oat.Score_5_DEX_Equivalent__c = '5';
        oat.Score_5_Name__c = 'Resilient';
        oat.Score_6_DEX_Equivalent__c = null;
        oat.Score_6_Name__c = null;
        oat.Score_7_DEX_Equivalent__c = null;
        oat.Score_7_Name__c = null;
        oat.Score_8_DEX_Equivalent__c = null;
        oat.Score_8_Name__c = null;
        oat.Score_9_DEX_Equivalent__c = null;
        oat.Score_9_Name__c = null;
        oat.Short_Description__c = 'Doing well at school and enjoying learning';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Education and Skills Training';
        oat.Id = 'a154a000000FSCoAAO';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>I’m not thinking about my children’s learning or aspirations</b></p><ul><li>Your children aren’t regularly attending school, training, work or suitable alternative education and you don’t acknowledge this as a problem. You aren’t giving pre-school children stimulating things to do, playing with them, helping them develop co-ordination or taking them to places that help their development</li><li>Your children are behind other children of a similar age in their development. Maybe you are negative about school or don’t know how to support them</li><li>Choose 1 if you don’t see this as a problem.</li><li>Choose 2 if you have moments of acknowledging problems about your children’s learning but don’t accept help</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I am concerned that my children are missing out and I’m accepting support to do something about this</b></p><ul><li>You are concerned that your children are not regularly taking part in school, training or stimulating activities, or are achieving well below their potential</li><li>Choose 3 if you occasionally accept help with this.</li><li>Choose 4 if you accept help more consistently but you don’t take the initiative to support your children yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>There are problems with learning and aspiration but I am trying to sort them out</b></p><ul><li>You are trying to make a difference to your children’s education or early development but they are missing out on learning opportunities</li><li>You are trying new things with your children, for instance praise, playing or reading together, or sanctions for missing school, but you find it hard</li><li>If your children are leaving or have left school/college, you are trying to help them make positive choices but it’s hard</li><li>Choose 5 if you give up easily.</li><li>Choose 6 if you have been doing this for a while but haven’t yet found what works to support your children effectively</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>Some things are working well but there are still problems to address</b></p><ul><li>Your children are attending school regularly and/or have opportunities to learn, play and develop but there are still problems in some areas</li><li>If your children have left school/college, you are encouraging them in getting or holding down training or employment and in developing aspirations for the future</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children are able to learn well but you need support to maintain this</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children are learning well and developing positive aspirations for the future</b></p><ul><li>Your children are reaching their potential. Their school attendance is good and you attend main school events and celebrate their achievements</li><li>You prioritise learning, play, reading, early development and other stimulation for your baby or young children. Older children have support with college, training or work, and encouragement to take responsibility and make positive choices</li><li>Your children have positive role models</li><li>Choose 9 if you need occasional support.</li><li>Choose 10 if your children are learning well and you don’t need support in this area</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>From 1 to 4 any efforts to turn around problems with school or learning come from outside the family</li><li>From 5 you are increasingly motivated and addressing this for yourself</li><li>By 8 your children have good attendance at school or training and/or are supported to develop and achieve their potential</li></ul>';
        oat.Long_Description__c = '<p>This scale is about supporting your children’s learning and aspirations. For school-age children this means at least 85% attendance, but targets may vary. For babies and younger children, it is about developing co-ordination, stimulating activities, messy play, positive risk-taking and helping them start school well. For older children, it is about supporting aspiration and ensuring they are engaged in work or learning.</p>';
        oat.Name = 'Education and learning';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I feel motivated some of the time';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'School, homework, learning through play, early development';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Personal and Family Safety';
        oat.Id = 'a154a000000FS9fAAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>People say my children are not safe. I wish they would stop interfering</b></p><ul><li>Your children are not safe for one or more of these reasons:</li><li>They are left unsupervised and at risk of accidents</li><li>They are getting in trouble with crime or drugs or are victims of crime</li><li>They are victims of, or at risk of, physical, sexual or emotional abuse</li><li>They are victims, or perpetrators, of bullying or racial harassment</li><li>Your behaviour, older siblings or people who visit put them at risk</li><li>They or their close friends often put themselves in risky situations</li><li>Choose 1 if you can’t face thinking about this.</li><li>Choose 2 if you have moments of concern or of acknowledging your children are not safe but don’t accept support</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>My children are not safe enough. I go along with some support in this area</b></p><ul><li>A crisis, accident or social worker has made you aware that your children are not safe in any of the ways described under 1-2, or you have realised for yourself. It may feel awful to acknowledge this but you now accept help so things can change</li><li>You may feel unsafe as well due to bullying, racial harassment, domestic abuse or other crime</li><li>Choose 3 if you occasionally allow others to help.</li><li>Choose 4 if you accept help more consistently so there are no immediate risks but you don’t take the initiative</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am changing things so that I can protect my children and myself</b></p><ul><li>Perhaps you are trying to spend more time at home, check that younger children are safe with older children, find new childcare or set rules about when children can go out and where they can go</li><li>You are trying to change your own behaviour if this was affecting your children’s safety</li><li>If there has been domestic abuse, bullying or racial harassment, you are making changes. If your children have been abused you are getting help for them</li><li>Choose 5 if you have just started trying to make changes.</li><li>Choose 6 if you have been trying for a while but have not yet found what works and need support to keep going</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>My children and I are mostly safe but there are a few issues</b></p><ul><li>You put strategies in place to keep your children safe both at home and outside</li><li>If there have been safety issues such as domestic abuse or inappropriate visitors, this has now stopped</li><li>You talk to your children about safety issues appropriate to their age, including accidents, bullying and crime, drugs, alcohol, sexual health and internet risks</li><li>Choose 7 if there is still more that needs to change.</li><li>Choose 8 if your children are safe in your care but you still need some help with managing the situation</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>My children are safe in my care</b></p><ul><li>You are safe, your home is safe, and the people who visit are safe for your children</li><li>You teach your children about all safety issues appropriate to their age, including accidents, bullying and crime, drugs, alcohol, sexual health and internet risks</li><li>If you have older children you know enough of what they are doing, their peer group is mostly safe, and they are not causing any risks to your younger children</li><li>You think ahead and act straight away if you see a risk to your children’s safety</li><li>Choose 9 if you need occasional support to keep your children safe.</li><li>Choose 10 if your children are safe and you don’t need outside help to keep them that way</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>At 1-3 professionals may need to trigger child protection actions, depending on the severity of the issues</li><li>By 4 any immediate safety issues are being addressed</li><li>By 8 there is no domestic abuse in your family, and your children are adequately supervised and safe, with support</li></ul>';
        oat.Long_Description__c = '<p>This scale is about appropriate supervision, ensuring your home is safe, internet safety, and protecting your children from accidents and risks. It is also about protecting yourself and your children from bullying, racial harassment and domestic abuse.</p>';
        oat.Name = 'Keeping your children safe';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m starting to try things out';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing OK with support';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Protecting your children, avoiding accidents, bullying and abuse';

        oats.add(oat);

        oat = new Outcome_Area_Template__c(Outcome_Star_Template__c = 'a1f4a0000000Z2RAAU');
        oat.Dex_Score_Category__c = 'CIRCUMSTANCES';
        oat.Dex_Score_Domain__c = 'Mental Health';
        oat.Id = 'a154a000000FS88AAG';
        oat.Journey_Of_Change_Step_1_Description__c = '<p><b>If my children have problems, it’s not my fault. We don’t want help</b></p><ul><li>You do not give your children the attention, positive feedback or encouragement they need and this may be damaging their self-esteem</li><li>You may feel resentful or angry towards them and/or unable to express the love you feel or empathise with them. You may feel distant from them or you may be so close that you depend on them a lot to meet your emotional needs</li><li>Choose 1 if you can’t face thinking about this.</li><li>Choose 2 if you have moments of concern or of acknowledging problems but you do not accept support</li></ul>';
        oat.Journey_Of_Change_Step_1_Long_Name__c = 'Stuck (1 - 2)';
        oat.Journey_Of_Change_Step_10_Description__c = null;
        oat.Journey_Of_Change_Step_10_Long_Name__c = null;
        oat.Journey_Of_Change_Step_2_Description__c = '<p><b>I know I don’t give my children the emotional support they need but I am accepting support to change that</b></p><ul><li>You have similar issues to 1-2, but you acknowledge that there is a problem and accept some support</li><li>Choose 3 if sometimes you allow others to help but sometimes you don’t.</li><li>Choose 4 if this is more consistent but you don’t take the initiative to improve things yourself</li></ul>';
        oat.Journey_Of_Change_Step_2_Long_Name__c = 'Accepting help (3 - 4)';
        oat.Journey_Of_Change_Step_3_Description__c = '<p><b>I am trying to support my children emotionally but it’s difficult</b></p><ul><li>You try to give your children attention but you find it hard to keep up. Your children may experience you as inconsistent and are not yet seeing the benefits</li><li>You may find it hard to allow them to learn how to deal with problems themselves but are trying to do this so they can be more resilient</li><li>If your relationship has been distant or over-close, you are trying to change this</li><li>Choose 5 if it is early days.</li><li>Choose 6 if you have been trying for a while but are not yet finding what works</li></ul>';
        oat.Journey_Of_Change_Step_3_Long_Name__c = 'Trying (5 - 6)';
        oat.Journey_Of_Change_Step_4_Description__c = '<p><b>I am mostly meeting my children’s emotional needs but there are a few problems</b></p><ul><li>You are mostly able to respond well to your children’s emotional needs, but not always. You have learnt some new approaches and are noticing a positive impact on your children when you use them</li><li>You are learning how to give your children the attention, positive feedback and encouragement they need to grow up more resilient, as well as how to let them experience difficulties for themselves and support them when things go wrong</li><li>Choose 7 if there is more that needs to change. </li><li>Choose 8 if your children mostly have what they need to grow up emotionally healthy but you still need support</li></ul>';
        oat.Journey_Of_Change_Step_4_Long_Name__c = 'Finding what works (7 - 8)';
        oat.Journey_Of_Change_Step_5_Description__c = '<p><b>I respond well enough to my children and don&#39;t need support in this area</b></p><ul><li>You give your children enough attention and encouragement, and express your love for them, though its form may depend on your own family culture</li><li>You can support them to deal with difficulties, so they grow up more resilient</li><li>You feel close but allow them to be separate from you when they need to be</li><li>Choose 9 if you need occasional support in this area.</li><li>Choose 10 if your children have what they need to be  emotionally healthy and you don’t need support</li></ul>';
        oat.Journey_Of_Change_Step_5_Long_Name__c = 'Effective parenting (9 - 10)';
        oat.Journey_Of_Change_Step_6_Description__c = null;
        oat.Journey_Of_Change_Step_6_Long_Name__c = null;
        oat.Journey_Of_Change_Step_7_Description__c = null;
        oat.Journey_Of_Change_Step_7_Long_Name__c = null;
        oat.Journey_Of_Change_Step_8_Description__c = null;
        oat.Journey_Of_Change_Step_8_Long_Name__c = null;
        oat.Journey_Of_Change_Step_9_Description__c = null;
        oat.Journey_Of_Change_Step_9_Long_Name__c = null;
        oat.Key_Points__c = '<ul><li>By 4 you are consistently accepting support</li><li>By 8 you are able to meet your children’s emotional needs well enough, with support</li><li>By 10 your children have what they need from you to grow up emotionally healthy and resilient and you don’t</li></ul>';
        oat.Long_Description__c = '<p>This scale is about meeting your children’s emotional needs, including the connection and relationship that you have with them. It is about giving your children the attention, positive feedback and encouragement that they need, being able to express your love for them and ensuring they can grow up positive and able to deal with life’s inevitable ups and downs.</p>';
        oat.Name = 'Meeting emotional needs';
        oat.RecordTypeId = '0124a0000004LzNAAU';
        oat.Score_1_DEX_Equivalent__c = '1';
        oat.Score_1_Name__c = 'That\'s just the way it is';
        oat.Score_10_DEX_Equivalent__c = '5';
        oat.Score_10_Name__c = 'Yes, that\'s me';
        oat.Score_2_DEX_Equivalent__c = '1';
        oat.Score_2_Name__c = 'Yes, and it\'s a problem';
        oat.Score_3_DEX_Equivalent__c = '2';
        oat.Score_3_Name__c = 'I sometimes accept help';
        oat.Score_4_DEX_Equivalent__c = '2';
        oat.Score_4_Name__c = 'I accept help consistently';
        oat.Score_5_DEX_Equivalent__c = '3';
        oat.Score_5_Name__c = 'I\'m starting to make changes';
        oat.Score_6_DEX_Equivalent__c = '3';
        oat.Score_6_Name__c = 'I\'m trying things out and making changes';
        oat.Score_7_DEX_Equivalent__c = '4';
        oat.Score_7_Name__c = 'Yes, but a few problems still';
        oat.Score_8_DEX_Equivalent__c = '4';
        oat.Score_8_Name__c = 'Yes, I\'m mostly managing on my own';
        oat.Score_9_DEX_Equivalent__c = '5';
        oat.Score_9_Name__c = 'Yes, with occasional support';
        oat.Short_Description__c = 'Helping your children grow up happy and resilient, connection and love';

        oats.add(oat);

        return oats;
    }

    public static List<Outlet_Activity__c> readOutletActivities()
    {
        List<Outlet_Activity__c> oas = new List<Outlet_Activity__c>();
        Outlet_Activity__c oa;

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhRMEA0';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 15807;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Keen Street';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2016-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjtZAAS');
        oa.Id = 'a1D4a000000Bns8EAC';
        oa.Activity__c = '47277';
        oa.Dex_Outlet_Activity_Id__c = 46511;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8690;
        oa.Name = 'YCC - TEI Community Centres - Lismore Clubhouse';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OjCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjtZAAS');
        oa.Id = 'a1D4a000000BnshEAC';
        oa.Activity__c = '47277';
        oa.Dex_Outlet_Activity_Id__c = 45307;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8690;
        oa.Name = 'YCC - TEI Community Centres - Keen Street';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BnvCEAS';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47431;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-MUR-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OtCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BnwKEAS';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47434;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-LIS(C)-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OkCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000Bnx3EAC';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47436;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-MUL-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5P2CAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BnxXEAS';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47438;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-TWD-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OdCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BnyGEAS';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47440;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-BAL-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OoCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BnyuEAC';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47442;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-CAS-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh4a00000002XYCAY';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000Bo04EAC';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 47444;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-GFT-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OxCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000Bo0YEAS';
        oa.Activity__c = '47327';
        oa.Dex_Outlet_Activity_Id__c = 45310;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8929;
        oa.Name = 'GiT-LIS(K)-TargetedSupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoAOEA0';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47432;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-MUR-Community Support';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OtCAK';
        oa.Start_Date__c = Date.valueOf('2020-06-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoAxEAK';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47433;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-LIS(C)-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OkCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoBHEA0';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47435;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-MUL-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5P2CAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoDhEAK';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47437;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-TWD-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OdCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoDiEAK';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47443;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-GFT-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OxCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjtZAAS');
        oa.Id = 'a1D4a000000BoEpEAK';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 46512;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'YCC - TEI Community Support - Lismore Clubhouse';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OjCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoFdEAK';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47441;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-CAS-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh4a00000002XYCAY';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000BoHPEA0';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 45308;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-LIS(K)-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rrJAAQ');
        oa.Id = 'a1D4a000000EsxyEAC';
        oa.Activity__c = '47302';
        oa.Dex_Outlet_Activity_Id__c = 47439;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 8845;
        oa.Name = 'GiT-BAL-CommunitySupport';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OoCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000007rhmAAA');
        oa.Id = 'a1D4a000000VeFeEAK';
        oa.Activity__c = '9729';
        oa.Dex_Outlet_Activity_Id__c = 51323;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9729;
        oa.Name = 'Family Connect and Support (for Pathfinders Ltd) - Coffs 26 Gordon St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh4a00000005YeCAI';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000007rhmAAA');
        oa.Id = 'a1D4a000000VeGSEA0';
        oa.Activity__c = '9729';
        oa.Dex_Outlet_Activity_Id__c = 51322;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9729;
        oa.Name = 'Family Connect and Support (for Pathfinders Ltd) - Taree - 140A Victoria St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh4a00000005YZCAY';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000007rhmAAA');
        oa.Id = 'a1D4a000000VeH1EAK';
        oa.Activity__c = '9729';
        oa.Dex_Outlet_Activity_Id__c = 51324;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9729;
        oa.Name = 'Family Connect and Support (for Pathfinders Ltd) - Kempsey - 51 Smith St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh4a00000005YUCAY';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000006iyTAAQ');
        oa.Id = 'a1D4a000000VeYsEAK';
        oa.Activity__c = '9631';
        oa.Dex_Outlet_Activity_Id__c = 51272;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9631;
        oa.Name = 'Family Connect and Support - Lismore 16 Keen St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000006iyTAAQ');
        oa.Id = 'a1D4a000000VeZlEAK';
        oa.Activity__c = '9631';
        oa.Dex_Outlet_Activity_Id__c = 51325;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9631;
        oa.Name = 'Family Connect and Support - Grafton 50 Victoria St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OxCAK';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000006iyTAAQ');
        oa.Id = 'a1D4a000000VeaKEAS';
        oa.Activity__c = '9631';
        oa.Dex_Outlet_Activity_Id__c = 51326;
        oa.End_Date__c = Date.valueOf('2023-12-31');
        oa.Organisation_Activity_Id__c = 9631;
        oa.Name = 'Family Connect and Support - Tweed Heads 145 Warf St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OdCAK';
        oa.Start_Date__c = Date.valueOf('2021-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjtoAAC');
        oa.Id = 'a1D4a0000008CEhEAM';
        oa.Activity__c = '45677';
        oa.Dex_Outlet_Activity_Id__c = 3898;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 531;
        oa.Name = 'Community Mental Health, Early Intervention for Children';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2015-03-01');
        oa.Status__c = 'ENDED';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjteAAC');
        oa.Id = 'a1D4a000000BhF2EAK';
        oa.Activity__c = '45802';
        oa.Dex_Outlet_Activity_Id__c = 3897;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1051;
        oa.Name = 'Elements - Family and Relationship - Keen St';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2015-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhLZEA0';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 15145;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Mullumbimby';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5P2CAK';
        oa.Start_Date__c = Date.valueOf('2016-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhLsEAK';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 42485;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Murwillumbah';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OtCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhMgEAK';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 42484;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Carrington Street';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OkCAK';
        oa.Start_Date__c = Date.valueOf('2007-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhNyEAK';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 15148;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Wharf Street';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OdCAK';
        oa.Start_Date__c = Date.valueOf('2016-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhOrEAK';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 15147;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Ballina';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OoCAK';
        oa.Start_Date__c = Date.valueOf('2016-01-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a134a0000004rr9AAA');
        oa.Id = 'a1D4a000000BhPkEAK';
        oa.Activity__c = '46577';
        oa.Dex_Outlet_Activity_Id__c = 15146;
        oa.End_Date__c = Date.valueOf('2021-06-30');
        oa.Organisation_Activity_Id__c = 1597;
        oa.Name = 'Reconnect - Grafton';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OxCAK';
        oa.Start_Date__c = Date.valueOf('2020-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        oa = new Outlet_Activity__c(Program__c='a132x000000XjtoAAC');
        oa.Id = 'a1D9s0000000d7TEAQ';
        oa.Activity__c = '45877';
        oa.Dex_Outlet_Activity_Id__c = 53489;
        oa.End_Date__c = Date.valueOf('2026-06-30');
        oa.Organisation_Activity_Id__c = 9846;
        oa.Name = 'Family Mental Health Support Services';
        oa.Program_Name__c = null;
        oa.Service_Territory__c = '0Hh2x000000L5OnCAK';
        oa.Start_Date__c = Date.valueOf('2021-07-01');
        oa.Status__c = 'Active';
        oas.add(oa);

        return oas;
    }

    public static List<sfSandboxSetup.ContactData> readContactData()
    {
        // Source: https://homepage.net/name_generator/
        List<sfSandboxSetup.ContactData> contactInfo = new List<sfSandboxSetup.ContactData> {
                new sfSandboxSetup.ContactData('Ryan','Hoffnung','RyanHoffnung@example.com','male','male','37 Wright Street','KIAMBA','QLD','4560','(07) 5393 2126','2/17/1990'),
                new sfSandboxSetup.ContactData('Declan','Collingridge de Tourcey','DeclanCollingridgedeTourcey@example.com','male','male','88 Seiferts Rd','TAROOMBALL','QLD','4703','(07) 4964 4446','5/16/1993'),
                new sfSandboxSetup.ContactData('Patrick','Hawker','PatrickHawker@example.com','male','male','88 Ronald Crescent','HERON ISLAND','QLD','4680','(07) 4979 9259','10/28/1941'),
                new sfSandboxSetup.ContactData('Finn','Woollard','FinnWoollard@example.com','male','male','96 Nandewar Street','PORT MACQUARIE BC','NSW','2444','(02) 6756 7072','11/30/1973'),
                new sfSandboxSetup.ContactData('Isabella','Whitelaw','IsabellaWhitelaw@example.com','female','female','25 Forrest Road','BIRRIWA','NSW','2844','(02) 4050 8987','1/5/1989'),
                new sfSandboxSetup.ContactData('Bailey','O\'Farrell','BaileyO\'Farrell@example.com','male','male','99 Eshelby Drive','ANNANDALE','QLD','4814','(07) 4034 2536','11/22/1995'),
                new sfSandboxSetup.ContactData('Anna','Martyn','AnnaMartyn@example.com','female','female','89 Kogil Street','BINNAWAY','NSW','2395','(02) 6791 9387','11/12/1956'),
                new sfSandboxSetup.ContactData('Cameron','Lorimer','CameronLorimer@example.com','male','male','69 Punchs Creek Road','GOONDIWINDI','QLD','4390','(07) 4527 8390','5/17/1940'),
                new sfSandboxSetup.ContactData('Ruby','Kosovich','RubyKosovich@example.com','female','female','92 Dalgarno Street','BURBURGATE','NSW','2380','(02) 6734 4320','11/5/1994'),
                new sfSandboxSetup.ContactData('Aiden','Kirtley','AidenKirtley@example.com','male','male','56 Chapel Close','EARLVILLE','QLD','4870','(07) 4097 6976','11/23/1989'),
                new sfSandboxSetup.ContactData('Abigail','Jerrems','AbigailJerrems@example.com','female','female','43 Boonah Qld','CALVERT','QLD','4340','(07) 4596 5872','9/22/1984'),
                new sfSandboxSetup.ContactData('Ellie','Masters','EllieMasters@example.com','female','female','60 Ulomogo Street','NORTH BURRABADINE','NSW','2830','(02) 4015 8201','3/5/1962'),
                new sfSandboxSetup.ContactData('Laura','Harricks','LauraHarricks@example.com','female','female','99 Cassinia Street','THE VALE','NSW','2715','(02) 9921 9320','11/14/1948'),
                new sfSandboxSetup.ContactData('Rebecca','Houlding','RebeccaHoulding@example.com','female','female','1 Cedar Street','WHARPS','QLD','4850','(07) 4094 9511','12/28/1997'),
                new sfSandboxSetup.ContactData('Alexandra','McComas','AlexandraMcComas@example.com','female','female','89 Elizabeth Street','WALLU','QLD','4570','(07) 5321 3626','7/10/1942'),
                new sfSandboxSetup.ContactData('Toby','Plunkett','TobyPlunkett@example.com','male','male','82 Brown Street','CASTLECRAG','NSW','2068','(02) 9572 6938','4/5/1993'),
                new sfSandboxSetup.ContactData('Abbey','Petherick','AbbeyPetherick@example.com','female','female','98 Blairgowrie Avenue','TUROSS','NSW','2630','(02) 6133 7861','11/9/1988'),
                new sfSandboxSetup.ContactData('Levi','Leeson','LeviLeeson@example.com','male','male','3 Marx Hill Road','BUNDAGEN','NSW','2454','(02) 6761 3761','7/1/1992'),
                new sfSandboxSetup.ContactData('Abby','Yagan','AbbyYagan@example.com','female','female','18 Quintin Street','STONY CREEK','QLD','4514','(07) 3892 7615','6/30/1940'),
                new sfSandboxSetup.ContactData('Ashley','Loftus','AshleyLoftus@example.com','female','female','13 Cunningham Street','JACKSON','QLD','4426','(07) 4551 9861','4/4/1948'),
                new sfSandboxSetup.ContactData('Ryder','Birnie','RyderBirnie@example.com','male','male','51 Hodgson St','LESLIE','QLD','4370','(07) 4587 1562','3/4/1978'),
                new sfSandboxSetup.ContactData('Sophie','Corlette','SophieCorlette@example.com','female','female','51 Forrest Road','ANGUS PLACE','NSW','2845','(02) 4096 9215','6/21/1989'),
                new sfSandboxSetup.ContactData('Claudia','Sullivan','ClaudiaSullivan@example.com','female','female','55 Border Drive','EUNONOREENYA','NSW','2650','(02) 6181 5376','2/2/1951'),
                new sfSandboxSetup.ContactData('Alica','Kern','AlicaKern@example.com','female','female','64 Feather Street','MERIDAN PLAINS','QLD','4551','(07) 5399 3823','7/13/1992'),
                new sfSandboxSetup.ContactData('Ava','Anthony','AvaAnthony@example.com','female','female','21 Kerma Crescent','WOLGAN VALLEY','NSW','2790','(02) 4059 5230','12/8/1950'),
                new sfSandboxSetup.ContactData('Jesse','Akhurst','JesseAkhurst@example.com','male','male','57 Whitehaven Crescent','MOURILYAN','QLD','4858','(07) 4056 5417','12/21/1963'),
                new sfSandboxSetup.ContactData('Madison','Vosper','MadisonVosper@example.com','female','female','83 Faunce Crescent','THARBOGANG','NSW','2680','(02) 6161 1913','6/7/1959'),
                new sfSandboxSetup.ContactData('Angelina','Birnie','AngelinaBirnie@example.com','female','female','86 Tennyson Road','CANTERBURY','NSW','2193','(02) 6292 8652','9/11/1950'),
                new sfSandboxSetup.ContactData('Anthony','Zouch','AnthonyZouch@example.com','male','male','61 Campbells River Road','BIDDON','NSW','2827','(02) 4063 0936','4/27/1985'),
                new sfSandboxSetup.ContactData('Jasmine','Pearson','JasminePearson@example.com','female','female','14 Bathurst Road','ORTON PARK','NSW','2795','(02) 4048 2337','1/24/1970'),
                new sfSandboxSetup.ContactData('Timothy','Nobelius','TimothyNobelius@example.com','male','male','69 Plug Street','GLEN NEVIS','NSW','2365','(02) 6746 1178','3/13/1984'),
                new sfSandboxSetup.ContactData('Keira','Charlesworth','KeiraCharlesworth@example.com','female','female','49 Grayson Street','WAGGA WAGGA RAAF','NSW','2651','(02) 6131 5812','5/10/1967'),
                new sfSandboxSetup.ContactData('Timothy','Madden','TimothyMadden@example.com','male','male','92 George Street','BAYRICK','QLD','4478','(07) 4555 4710','8/25/1979'),
                new sfSandboxSetup.ContactData('Alannah','Virgo','AlannahVirgo@example.com','female','female','54 Jones Road','RICHLANDS DC','QLD','4077','(07) 3067 9252','9/29/1953'),
                new sfSandboxSetup.ContactData('Kiara','Hirschfeld','KiaraHirschfeld@example.com','female','female','31 Old Gayndah Road','OAKHURST','QLD','4650','(07) 3812 0756','12/31/1960'),
                new sfSandboxSetup.ContactData('Taj','Hollway','TajHollway@example.com','male','male','34 Raglan Street','CORNDALE','QLD','4610','(07) 4536 8282','6/1/1962'),
                new sfSandboxSetup.ContactData('Isabella','McCann','IsabellaMcCann@example.com','female','female','56 Derry Street','BELLARA','QLD','4507','(07) 3190 0552','12/2/1950'),
                new sfSandboxSetup.ContactData('Henry','Catt','HenryCatt@example.com','male','male','43 Railway Street','FOREST RIDGE','QLD','4357','(07) 4515 5885','3/31/1961'),
                new sfSandboxSetup.ContactData('Christopher','Dunlea','ChristopherDunlea@example.com','male','male','20 Ridge Road','WOODGATE','QLD','4660','(07) 3033 6117','10/15/2000'),
                new sfSandboxSetup.ContactData('Poppy','Haenke','PoppyHaenke@example.com','female','female','49 Ageston Road','TAROME','QLD','4309','(07) 4587 1012','10/4/1972'),
                new sfSandboxSetup.ContactData('Natalie','Moncrieff','NatalieMoncrieff@example.com','female','female','57 Ferny Avenue','WINFIELD','QLD','4670','(07) 3497 6262','5/14/1943'),
                new sfSandboxSetup.ContactData('Leo','Sellheim','LeoSellheim@example.com','male','male','99 Dora Creek','WHIAN WHIAN','NSW','2480','(02) 6759 6327','9/25/1942'),
                new sfSandboxSetup.ContactData('Jessica','Stanfield','JessicaStanfield@example.com','female','female','32 Spencer Street','WURTULLA','QLD','4575','(07) 5380 7085','7/17/1939'),
                new sfSandboxSetup.ContactData('Evie','Solly','EvieSolly@example.com','female','female','27 Marx Hill Road','NORTH BANK','NSW','2454','(02) 6795 2589','8/6/1944'),
                new sfSandboxSetup.ContactData('Holly','Trevascus','HollyTrevascus@example.com','female','female','9 Webb Road','MAYFIELD NORTH','NSW','2304','(02) 4919 3500','12/10/1965'),
                new sfSandboxSetup.ContactData('Annabelle','Deakin','AnnabelleDeakin@example.com','female','female','53 Webb Road','LAMBTON','NSW','2299','(02) 4979 3340','11/11/1997'),
                new sfSandboxSetup.ContactData('Anna','Waldock','AnnaWaldock@example.com','female','female','36 Eurack Court','PEJAR','NSW','2583','(02) 6148 3639','2/11/1976'),
                new sfSandboxSetup.ContactData('Sophia','Goldsmith','SophiaGoldsmith@example.com','female','female','77 Florabunda Lane','NARELLAN DC','NSW','2567','(02) 4683 4708','12/6/1955'),
                new sfSandboxSetup.ContactData('Marcus','Kiek','MarcusKiek@example.com','male','male','19 Kerma Crescent','MOUNT LAMBIE','NSW','2790','(02) 4062 2206','4/11/1998'),
                new sfSandboxSetup.ContactData('Mikayla','Braim','MikaylaBraim@example.com','female','female','92 Blairgowrie Avenue','MURRUMBUCCA','NSW','2630','(02) 6125 9662','3/4/1978'),
                new sfSandboxSetup.ContactData('Rebecca','Robson','RebeccaRobson@example.com','female','female','47 Thyme Avenue','FLEURBAIX','QLD','4375','(07) 4590 8489','1/27/1957'),
                new sfSandboxSetup.ContactData('Jesse','Poate','JessePoate@example.com','male','male','26 Cambridge Street','AGNES BANKS','NSW','2753','(02) 4737 8846','2/24/1980'),
                new sfSandboxSetup.ContactData('Kiara','Delamothe','KiaraDelamothe@example.com','female','female','50 Carolina Park Road','PATONGA','NSW','2256','(02) 9202 5336','3/3/1976'),
                new sfSandboxSetup.ContactData('Bethany','Maas','BethanyMaas@example.com','female','female','94 Arthur Street','TENANDRA','NSW','2824','(02) 4011 0171','7/29/1983'),
                new sfSandboxSetup.ContactData('Alexis','Pettigrew','AlexisPettigrew@example.com','female','female','10 Ageston Road','ANTHONY','QLD','4310','(07) 4501 1448','11/30/1990'),
                new sfSandboxSetup.ContactData('Caitlin','Lane','CaitlinLane@example.com','female','female','41 Campbells River Road','MERRIGAL','NSW','2827','(02) 4046 7376','5/14/1983'),
                new sfSandboxSetup.ContactData('Seth','Lutwyche','SethLutwyche@example.com','male','male','39 Wright Street','NAMBOUR WEST','QLD','4560','(07) 5365 7955','6/20/1950'),
                new sfSandboxSetup.ContactData('Milla','Haining','MillaHaining@example.com','female','female','45 Grandis Road','YARRAVEL','NSW','2440','(02) 6736 5153','8/26/1952'),
                new sfSandboxSetup.ContactData('Katie','Jack','KatieJack@example.com','female','female','73 Mnimbah Road','CLARENCE TOWN','NSW','2321','(02) 4921 4561','4/16/1952'),
                new sfSandboxSetup.ContactData('Owen','Everard','OwenEverard@example.com','male','male','56 Tennyson Road','BASS HILL','NSW','2197','(02) 9754 9241','10/4/1998'),
                new sfSandboxSetup.ContactData('Brooke','McKenzie','BrookeMcKenzie@example.com','female','female','75 Sunset Drive','KIANGA','QLD','4718','(07) 4917 1190','6/26/1972'),
                new sfSandboxSetup.ContactData('Dylan','Zwar','DylanZwar@example.com','male','male','53 Punchs Creek Road','WYAGA','QLD','4390','(07) 4530 1631','9/25/1985'),
                new sfSandboxSetup.ContactData('Elijah','Stable','ElijahStable@example.com','male','male','36 Old Gayndah Road','YENGARIE','QLD','4650','(07) 3766 8910','7/19/1937'),
                new sfSandboxSetup.ContactData('Jaxon','Plante','JaxonPlante@example.com','male','male','75 Moruya Road','MANAR','NSW','2622','(02) 6121 3231','8/26/1974'),
                new sfSandboxSetup.ContactData('Cameron','Hinchcliffe','CameronHinchcliffe@example.com','male','male','70 Sydney Road','PUTTA BUCCA','NSW','2850','(02) 4006 5546','8/19/1950'),
                new sfSandboxSetup.ContactData('Caitlin','Waugh','CaitlinWaugh@example.com','female','female','84 Lewin Street','BIRDLIP','NSW','2655','(02) 6175 5280','7/28/1955'),
                new sfSandboxSetup.ContactData('Isabella','Leidig','IsabellaLeidig@example.com','female','female','45 Frencham Street','COONONG','NSW','2645','(02) 6129 8506','2/24/1983'),
                new sfSandboxSetup.ContactData('Cooper','Kilvington','CooperKilvington@example.com','male','male','5 Pipeclay Road','REDBANK','NSW','2446','(02) 6789 7056','11/24/1999'),
                new sfSandboxSetup.ContactData('Eve','Curtis','EveCurtis@example.com','female','female','87 Kogil Street','MOREE EAST','NSW','2400','(02) 6757 0516','6/6/1990'),
                new sfSandboxSetup.ContactData('Audrey','Vickery','AudreyVickery@example.com','female','female','87 Berambing Crescent','TREGEAR','NSW','2770','(02) 4730 7003','5/2/1935'),
                new sfSandboxSetup.ContactData('Tahlia','Hillary','TahliaHillary@example.com','female','female','99 Punchs Creek Road','TERRICA','QLD','4387','(07) 4535 1330','12/6/1940'),
                new sfSandboxSetup.ContactData('Brock','Chomley','BrockChomley@example.com','male','male','84 Plug Street','PINDAROI','NSW','2361','(02) 6754 3065','12/19/1936'),
                new sfSandboxSetup.ContactData('John','Slattery','JohnSlattery@example.com','male','male','11 Bathurst Road','STEWARTS MOUNT','NSW','2795','(02) 4027 2074','8/20/1993'),
                new sfSandboxSetup.ContactData('Timothy','Courtney','TimothyCourtney@example.com','male','male','87 Seaview Court','FRESHWATER POINT','QLD','4737','(07) 4925 5267','6/27/1994'),
                new sfSandboxSetup.ContactData('Lilly','Beauchamp','LillyBeauchamp@example.com','female','female','65 Mt Berryman Road','MOUNT SYLVIA','QLD','4343','(07) 4555 5179','7/15/1959'),
                new sfSandboxSetup.ContactData('Georgia','Burgoyne','GeorgiaBurgoyne@example.com','female','female','32 Timms Drive','WALLAGA LAKE HEIGHTS','NSW','2546','(02) 4037 2999','10/4/1955'),
                new sfSandboxSetup.ContactData('Matilda','Thom','MatildaThom@example.com','female','female','88 Peninsula Drive','WOOLOOWARE','NSW','2230','(02) 4275 9843','5/15/1980'),
                new sfSandboxSetup.ContactData('Milla','Snelling','MillaSnelling@example.com','female','female','26 Chapman Avenue','HAZELBROOK','NSW','2779','(02) 4721 8141','4/22/1984'),
                new sfSandboxSetup.ContactData('Ellie','Redfern','EllieRedfern@example.com','female','female','61 Jones Road','SUMNER','QLD','4074','(07) 3997 5368','10/6/1992'),
                new sfSandboxSetup.ContactData('John','Warlow-Davies','JohnWarlow-Davies@example.com','male','male','97 Queen Street','WINGALA','NSW','2099','(02) 9171 1524','9/18/1972'),
                new sfSandboxSetup.ContactData('Lincoln','Meyer','LincolnMeyer@example.com','male','male','81 Boobialla Street','MAUDE','NSW','2711','(02) 6150 7205','3/17/1978'),
                new sfSandboxSetup.ContactData('Jessica','Rowell','JessicaRowell@example.com','female','female','80 Bette McNee Street','GOL GOL','NSW','2738','(02) 9703 9088','5/1/1987'),
                new sfSandboxSetup.ContactData('Alyssa','Waller','AlyssaWaller@example.com','female','female','7 Hodgson St','SILVERWOOD','QLD','4370','(07) 4562 5810','8/29/1949'),
                new sfSandboxSetup.ContactData('Scarlett','Garnsey','ScarlettGarnsey@example.com','female','female','46 Amiens Road','BOMBIRA','NSW','2850','(02) 4006 6952','5/3/1953'),
                new sfSandboxSetup.ContactData('Sam','Palazzi','SamPalazzi@example.com','male','male','36 Nandewar Street','GRANTS BEACH','NSW','2445','(02) 6790 3773','4/1/1984'),
                new sfSandboxSetup.ContactData('Mary','Molvig','MaryMolvig@example.com','female','female','31 Ugoa Street','BOOMERANG BEACH','NSW','2428','(02) 4912 8223','3/13/1984'),
                new sfSandboxSetup.ContactData('Audrey','Salter','AudreySalter@example.com','female','female','17 Florabunda Lane','SMEATON GRANGE','NSW','2567','(02) 4610 1859','9/9/1998'),
                new sfSandboxSetup.ContactData('Flynn','Dean','FlynnDean@example.com','male','male','23 Jones Road','DARRA','QLD','4076','(07) 3161 1079','5/6/1993'),
                new sfSandboxSetup.ContactData('Lilly','McGaw','LillyMcGaw@example.com','female','female','37 Walder Crescent','KALAPA','QLD','4702','(07) 4927 7878','8/21/1973'),
                new sfSandboxSetup.ContactData('Madeline','Salmon','MadelineSalmon@example.com','female','female','48 Raglan Street','FAIRDALE','QLD','4606','(07) 4542 2355','10/31/1990'),
                new sfSandboxSetup.ContactData('Eve','Koerstz','EveKoerstz@example.com','female','female','88 Whitehaven Crescent','MUNRO PLAINS','QLD','4854','(07) 4079 5702','4/30/1965'),
                new sfSandboxSetup.ContactData('Jaxon','Lalor','JaxonLalor@example.com','male','male','68 Davenport Street','COOLUMBOOKA','NSW','2632','(02) 6136 1766','4/6/1966'),
                new sfSandboxSetup.ContactData('Jonathan','Beasley','JonathanBeasley@example.com','male','male','56 Village Drive','VOYAGER POINT','NSW','2172','(02) 4612 7700','10/1/1957'),
                new sfSandboxSetup.ContactData('Lincoln','Copley','LincolnCopley@example.com','male','male','32 Pipeclay Road','PAPPINBARRA','NSW','2446','(02) 6754 4975','3/30/1996'),
                new sfSandboxSetup.ContactData('Alica','Praed','AlicaPraed@example.com','female','female','50 Ronald Crescent','TARAGOOLA','QLD','4680','(07) 4945 8176','5/25/1982'),
                new sfSandboxSetup.ContactData('Ryder','Ovens','RyderOvens@example.com','male','male','2 Treasure Island Avenue','TAMBORINE','QLD','4270','(07) 5679 1262','11/20/1986'),
                new sfSandboxSetup.ContactData('Grace','Elizabeth','GraceElizabeth@example.com','female','female','60 Hart Street','SEGENHOE','NSW','2337','(02) 4907 8728','5/24/1936'),
                new sfSandboxSetup.ContactData('Mitchell','Ranford','MitchellRanford@example.com','male','male','4 Ghost Hill Road','WILBERFORCE','NSW','2756','(02) 4787 6243','11/12/1994'),
                new sfSandboxSetup.ContactData('Anna','Holden','AnnaHolden@example.com','female','female','90 Chatsworth Road','CAMBRIDGE PLATEAU','NSW','2469','(02) 6730 9630','6/23/1958'),
                new sfSandboxSetup.ContactData('Luca','Desailly','LucaDesailly@example.com','male','male','46 Edgewater Close','MONDAYONG','NSW','2540','(02) 4081 4346','11/27/1939'),
                new sfSandboxSetup.ContactData('Archie','Sisley','ArchieSisley@example.com','male','male','3 Hillsdale Road','WOOCOO','QLD','4620','(07) 3877 3943','7/7/1973'),
                new sfSandboxSetup.ContactData('Liam','Dawbin','LiamDawbin@example.com','male','male','78 Jones Road','DOOLANDELLA','QLD','4077','(07) 3191 5128','3/3/1985'),
                new sfSandboxSetup.ContactData('Audrey','Geoghegan','AudreyGeoghegan@example.com','female','female','42 Davis Street','GAYTHORNE','QLD','4051','(07) 3308 3035','9/27/1974'),
                new sfSandboxSetup.ContactData('Owen','Auricht','OwenAuricht@example.com','male','male','42 Seninis Road','TOWNSVILLE CITY','QLD','4810','(07) 4081 4165','1/31/1964'),
                new sfSandboxSetup.ContactData('Gabrielle','Handfield','GabrielleHandfield@example.com','female','female','16 Hillsdale Road','LAKESIDE','QLD','4621','(07) 3525 2915','10/12/1947'),
                new sfSandboxSetup.ContactData('Liam','Dwight','LiamDwight@example.com','male','male','81 Florabunda Lane','SPRING FARM','NSW','2570','(02) 4645 4989','2/6/1958'),
                new sfSandboxSetup.ContactData('Alex','Hopkins','AlexHopkins@example.com','male','male','88 Walter Crescent','BROUGHTON VALE','NSW','2535','(02) 4024 2796','11/17/1941'),
                new sfSandboxSetup.ContactData('Jack','Seitz','JackSeitz@example.com','male','male','51 Wallum Court','TYALGUM','NSW','2484','(02) 6613 4082','5/19/1965'),
                new sfSandboxSetup.ContactData('Madeline','Dalziel','MadelineDalziel@example.com','female','female','17 Timms Drive','SOUTH PAMBULA','NSW','2549','(02) 4070 3482','11/17/1936'),
                new sfSandboxSetup.ContactData('Noah','O\'Loghlen','NoahO\'Loghlen@example.com','male','male','8 Pipeclay Road','YIPPIN CREEK','NSW','2446','(02) 6765 4318','4/3/1996'),
                new sfSandboxSetup.ContactData('Stephanie','Conder','StephanieConder@example.com','female','female','81 Eurack Court','KINGSVALE','NSW','2587','(02) 6161 1014','4/10/1977'),
                new sfSandboxSetup.ContactData('Luke','Cazaly','LukeCazaly@example.com','male','male','54 Elgin Street','ROTHBURY','NSW','2320','(02) 4954 9936','11/2/1984'),
                new sfSandboxSetup.ContactData('Abigail','Seddon','AbigailSeddon@example.com','female','female','72 Blairgowrie Avenue','MIDDLINGBANK','NSW','2630','(02) 6171 7991','6/2/1971'),
                new sfSandboxSetup.ContactData('Zachary','Schneider','ZacharySchneider@example.com','male','male','97 Hart Street','LOWER BELFORD','NSW','2335','(02) 4963 3898','6/18/1943'),
                new sfSandboxSetup.ContactData('Joel','Hipkiss','JoelHipkiss@example.com','male','male','10 Chapel Close','KANIMBLA','QLD','4870','(07) 4025 2507','6/14/1973'),
                new sfSandboxSetup.ContactData('Hunter','Cranswick','HunterCranswick@example.com','male','male','5 Moruya Road','HAROLDS CROSS','NSW','2622','(02) 6115 6608','7/17/1982'),
                new sfSandboxSetup.ContactData('Anthony','Makutz','AnthonyMakutz@example.com','male','male','7 Eshelby Drive','ROSSLEA','QLD','4812','(07) 4039 2707','3/15/1965'),
                new sfSandboxSetup.ContactData('Lucy','Edmond','LucyEdmond@example.com','female','female','65 Albacore Crescent','EAST BOWRAL','NSW','2576','(02) 4660 0133','3/16/1995'),
                new sfSandboxSetup.ContactData('Ebony','Ribush','EbonyRibush@example.com','female','female','87 Glen William Road','COWLEY','QLD','4871','(07) 4000 1682','6/18/1947'),
                new sfSandboxSetup.ContactData('John','Hipkiss','JohnHipkiss@example.com','male','male','98 McLeans Road','YARROL','QLD','4630','(07) 3078 8564','5/19/1993'),
                new sfSandboxSetup.ContactData('Mackenzie','Sandford','MackenzieSandford@example.com','female','female','58 Edgewater Close','EROWAL BAY','NSW','2540','(02) 4005 6965','5/8/1954'),
                new sfSandboxSetup.ContactData('Jordan','Skuthorp','JordanSkuthorp@example.com','male','male','70 Mackie Street','WEST NOWRA','NSW','2541','(02) 4056 6560','5/13/1963'),
                new sfSandboxSetup.ContactData('George','Balfe','GeorgeBalfe@example.com','male','male','12 Magnolia Drive','SYLVANIA','NSW','2224','(02) 4284 9707','4/2/1943'),
                new sfSandboxSetup.ContactData('Dominic','Bridgeford','DominicBridgeford@example.com','male','male','81 Punchs Creek Road','BILLA BILLA','QLD','4390','(07) 4506 1068','8/24/1969'),
                new sfSandboxSetup.ContactData('Alana','Spaull','AlanaSpaull@example.com','female','female','60 Glenpark Road','WOOLGOOLGA','NSW','2456','(02) 6750 7006','11/9/1959'),
                new sfSandboxSetup.ContactData('Declan','Cullen','DeclanCullen@example.com','male','male','79 Masthead Drive','ROCKHAMPTON NORTH','QLD','4701','(07) 4906 0629','6/1/1971'),
                new sfSandboxSetup.ContactData('Chelsea','Dodery','ChelseaDodery@example.com','female','female','79 Kintyre Street','MARSDEN','QLD','4132','(07) 3593 4732','8/29/1963'),
                new sfSandboxSetup.ContactData('Christopher','Moor','ChristopherMoor@example.com','male','male','59 Kerma Crescent','BOWENFELS','NSW','2790','(02) 4081 5883','2/14/2001'),
                new sfSandboxSetup.ContactData('Zachary','Hentze','ZacharyHentze@example.com','male','male','48 Whitehaven Crescent','WALTER HILL','QLD','4854','(07) 4080 8736','2/1/1984'),
                new sfSandboxSetup.ContactData('Joel','McCay','JoelMcCay@example.com','male','male','32 Kogil Street','BARWON','NSW','2396','(02) 6707 4697','1/8/1995'),
                new sfSandboxSetup.ContactData('Austin','Grieve','AustinGrieve@example.com','male','male','27 Old Tenterfield Road','LOWER BOTTLE CREEK','NSW','2469','(02) 6708 0355','9/1/1988'),
                new sfSandboxSetup.ContactData('Dakota','Outhwaite','DakotaOuthwaite@example.com','female','female','97 Ocean Street','DAWES POINT','NSW','2000','(02) 8231 6357','10/28/1965'),
                new sfSandboxSetup.ContactData('Natasha','Caley','NatashaCaley@example.com','female','female','25 Dalgarno Street','GUNNEMBENE','NSW','2380','(02) 6788 4575','3/5/1980'),
                new sfSandboxSetup.ContactData('Anna','Bazley','AnnaBazley@example.com','female','female','55 Boobialla Street','BLIGHTY','NSW','2713','(02) 6164 4111','1/20/1963'),
                new sfSandboxSetup.ContactData('Amber','Woodhouse','AmberWoodhouse@example.com','female','female','85 Mt Berryman Road','WOODLANDS','QLD','4343','(07) 4553 7580','1/6/1976'),
                new sfSandboxSetup.ContactData('Logan','Page','LoganPage@example.com','male','male','99 Kerma Crescent','RYDAL','NSW','2790','(02) 4098 3760','2/19/1999'),
                new sfSandboxSetup.ContactData('Lara','Noskowski','LaraNoskowski@example.com','female','female','26 Ross Street','NERANG BC','QLD','4211','(07) 5649 9344','11/23/1995'),
                new sfSandboxSetup.ContactData('Sebastian','Halloran','SebastianHalloran@example.com','male','male','58 Bass Street','ELTHAM','NSW','2480','(02) 6709 1929','11/20/1951'),
                new sfSandboxSetup.ContactData('Leo','Bigge','LeoBigge@example.com','male','male','88 Border Drive','BELFRAYDEN','NSW','2650','(02) 6195 8616','11/29/1991'),
                new sfSandboxSetup.ContactData('Amelia','Murphy','AmeliaMurphy@example.com','female','female','81 Sale Street','MARCH','NSW','2800','(02) 4054 8778','2/7/1952'),
                new sfSandboxSetup.ContactData('Cody','Melvin','CodyMelvin@example.com','male','male','73 Bayview Close','LIMESTONE','QLD','4714','(07) 4924 5160','9/14/1980'),
                new sfSandboxSetup.ContactData('Alyssa','Ness','AlyssaNess@example.com','female','female','71 Raglan Street','BYEE','QLD','4605','(07) 4595 6330','10/23/1969'),
                new sfSandboxSetup.ContactData('Darcy','Darvall','DarcyDarvall@example.com','male','male','89 Blairgowrie Avenue','POLO FLAT','NSW','2630','(02) 6114 7020','12/23/1959'),
                new sfSandboxSetup.ContactData('Max','Rede','MaxRede@example.com','male','male','27 Woodwark Crescent','SHELBURNE','QLD','4874','(07) 4037 8677','11/23/1954'),
                new sfSandboxSetup.ContactData('Dean','Harmer','DeanHarmer@example.com','male','male','63 Frencham Street','MURRAY GORGE','NSW','2642','(02) 6193 5861','1/10/1972'),
                new sfSandboxSetup.ContactData('Cody','Suffolk','CodySuffolk@example.com','male','male','6 Brentwood Drive','KURRIMINE BEACH','QLD','4871','(07) 4012 2164','12/9/1943'),
                new sfSandboxSetup.ContactData('Sienna','Bock','SiennaBock@example.com','female','female','33 Chester Street','CAROOL','NSW','2486','(02) 6664 2055','8/23/1942'),
                new sfSandboxSetup.ContactData('Marcus','Ditter','MarcusDitter@example.com','male','male','44 Ridge Road','BURRUM','QLD','4659','(07) 3425 2002','10/8/1961'),
                new sfSandboxSetup.ContactData('David','Hammer','DavidHammer@example.com','male','male','81 Queen Street','CROMER HEIGHTS','NSW','2099','(02) 9999 7919','2/21/1985'),
                new sfSandboxSetup.ContactData('Angelina','Dickson','AngelinaDickson@example.com','female','female','69 Webb Road','WARABROOK','NSW','2304','(02) 4906 0744','6/4/1978'),
                new sfSandboxSetup.ContactData('Alexandra','Grimstone','AlexandraGrimstone@example.com','female','female','28 Ryker Rd','FINLAY VALE','QLD','4873','(07) 4047 6296','6/22/1951'),
                new sfSandboxSetup.ContactData('Koby','Liardet','KobyLiardet@example.com','male','male','61 Mt Berryman Road','HELIDON SPA','QLD','4344','(07) 4598 5510','5/6/1941'),
                new sfSandboxSetup.ContactData('Mitchell','Frazer','MitchellFrazer@example.com','male','male','36 Cecil Street','BEECROFT','NSW','2119','(02) 4318 5943','3/2/1964'),
                new sfSandboxSetup.ContactData('Will','Le Couteur','WillLe Couteur@example.com','male','male','15 Cofton Close','TYRINGHAM','NSW','2453','(02) 6733 9688','2/16/1984'),
                new sfSandboxSetup.ContactData('Luca','Rivett','LucaRivett@example.com','male','male','68 Seaview Court','MAY DOWNS','QLD','4746','(07) 4911 2578','4/9/1973'),
                new sfSandboxSetup.ContactData('Harrison','Waddy','HarrisonWaddy@example.com','male','male','69 Butler Crescent','KITCHENER','NSW','2325','(02) 4969 7607','4/16/1968'),
                new sfSandboxSetup.ContactData('Jayden','O\'Hea','JaydenO\'Hea@example.com','male','male','66 Hay Point Road','SOUTH MACKAY','QLD','4740','(07) 4928 4598','12/8/1938'),
                new sfSandboxSetup.ContactData('Bailey','Scollen','BaileyScollen@example.com','male','male','69 Avondale Drive','CORDEAUX','NSW','2526','(02) 4218 3686','8/15/1946'),
                new sfSandboxSetup.ContactData('Joshua','Vaux','JoshuaVaux@example.com','male','male','24 Elizabeth Street','THE PALMS','QLD','4570','(07) 5388 9263','11/20/1936'),
                new sfSandboxSetup.ContactData('Toby','Hannan','TobyHannan@example.com','male','male','26 Village Drive','LIVERPOOL SOUTH','NSW','2170','(02) 4611 5744','9/15/1957'),
                new sfSandboxSetup.ContactData('Ebony','Duckworth','EbonyDuckworth@example.com','female','female','24 Ocean Pde','CUNGULLA','QLD','4816','(07) 4042 4130','5/22/1965'),
                new sfSandboxSetup.ContactData('Edward','Jensen','EdwardJensen@example.com','male','male','73 Forrest Road','MENDOORAN','NSW','2842','(02) 4056 0465','3/26/1984'),
                new sfSandboxSetup.ContactData('Natalie','Richardson','NatalieRichardson@example.com','female','female','37 Begley Street','BEATRICE','QLD','4886','(07) 4025 5495','4/11/1989'),
                new sfSandboxSetup.ContactData('Xavier','Buzacott','XavierBuzacott@example.com','male','male','38 Eshelby Drive','MUNDINGBURRA','QLD','4812','(07) 4052 7754','9/20/1996'),
                new sfSandboxSetup.ContactData('Skye','Canterbury','SkyeCanterbury@example.com','female','female','75 Cofton Close','MOONPAR','NSW','2453','(02) 6731 2205','3/20/1959'),
                new sfSandboxSetup.ContactData('Matthew','Tracey','MatthewTracey@example.com','male','male','96 Seaview Court','JUNDAH','QLD','4736','(07) 4983 7626','8/24/1963'),
                new sfSandboxSetup.ContactData('Michael','Beg','MichaelBeg@example.com','male','male','94 Boulter Close','SOUTH INNISFAIL','QLD','4860','(07) 4062 5537','11/15/1957'),
                new sfSandboxSetup.ContactData('Alica','Rubbo','AlicaRubbo@example.com','female','female','4 Dalgarno Street','BASIN PLAIN','NSW','2380','(02) 6789 9948','7/29/2000'),
                new sfSandboxSetup.ContactData('Joseph','Livingstone-Learmonth','JosephLivingstone-Learmonth@example.com','male','male','39 Hunter Street','MOUNT RASCAL','QLD','4350','(07) 4536 1670','5/1/1980'),
                new sfSandboxSetup.ContactData('Eliza','McCubbin','ElizaMcCubbin@example.com','female','female','30 Jones Road','ANNERLEY','QLD','4103','(07) 3263 8732','7/19/1943'),
                new sfSandboxSetup.ContactData('Isla','Smith','IslaSmith@example.com','female','female','94 Bayview Close','LEYDENS HILL','QLD','4714','(07) 4977 4987','4/11/1960'),
                new sfSandboxSetup.ContactData('Isabelle','Emery','IsabelleEmery@example.com','female','female','76 Oak Street','KILGIN','NSW','2472','(02) 6757 2669','10/11/1962'),
                new sfSandboxSetup.ContactData('Rachel','Catt','RachelCatt@example.com','female','female','35 Boobialla Street','FINLEY','NSW','2713','(02) 6196 1198','5/28/1943'),
                new sfSandboxSetup.ContactData('Luca','Fullagar','LucaFullagar@example.com','male','male','64 Carolina Park Road','BOOKER BAY','NSW','2257','(02) 9091 6931','9/15/1972'),
                new sfSandboxSetup.ContactData('Indiana','Topp','IndianaTopp@example.com','female','female','14 Boulter Close','GOONDI HILL','QLD','4860','(07) 4061 5258','7/1/1952'),
                new sfSandboxSetup.ContactData('Logan','Collicott','LoganCollicott@example.com','male','male','96 Frencham Street','WIRLINGA','NSW','2640','(02) 6144 1060','6/11/1989'),
                new sfSandboxSetup.ContactData('Beau','Hague','BeauHague@example.com','male','male','93 Railway Street','FELTON','QLD','4358','(07) 4590 9603','7/20/1960'),
                new sfSandboxSetup.ContactData('Joel','Boothman','JoelBoothman@example.com','male','male','92 Chapman Avenue','MAYFIELD','NSW','2787','(02) 4064 0777','5/29/1983'),
                new sfSandboxSetup.ContactData('Gabriella','Ward','GabriellaWard@example.com','female','female','28 Magnolia Drive','BANKSIA','NSW','2216','(02) 6267 7143','12/31/1990'),
                new sfSandboxSetup.ContactData('Hayden','Coates','HaydenCoates@example.com','male','male','48 Norton Street','WAITARA','NSW','2077','(02) 4367 7412','5/7/1966'),
                new sfSandboxSetup.ContactData('Hunter','Burton','HunterBurton@example.com','male','male','48 Grayson Street','OLD JUNEE','NSW','2652','(02) 6157 2697','6/3/1957'),
                new sfSandboxSetup.ContactData('Kiara','MacDevitt','KiaraMacDevitt@example.com','female','female','18 Chapman Avenue','HOVELLS CREEK','NSW','2794','(02) 4087 1014','6/20/1968'),
                new sfSandboxSetup.ContactData('Charlotte','Bleasdale','CharlotteBleasdale@example.com','female','female','74 Warren Avenue','CAVES BEACH','NSW','2281','(02) 4930 1630','5/2/1962'),
                new sfSandboxSetup.ContactData('Lachlan','Hannan','LachlanHannan@example.com','male','male','84 Delan Road','WONBAH','QLD','4671','(07) 3427 2827','8/14/1999'),
                new sfSandboxSetup.ContactData('Ryder','Fitzsimmons','RyderFitzsimmons@example.com','male','male','57 Rimbanda Road','SANDY FLAT','NSW','2372','(02) 6786 5089','2/4/1974'),
                new sfSandboxSetup.ContactData('David','Dwyer-Gray','DavidDwyer-Gray@example.com','male','male','60 Magnolia Drive','HURSTVILLE WESTFIELD','NSW','2220','(02) 6264 9939','7/3/1984'),
                new sfSandboxSetup.ContactData('Luke','Bowden','LukeBowden@example.com','male','male','85 Davis Street','FERNY HILLS','QLD','4055','(07) 3027 2254','3/9/1944'),
                new sfSandboxSetup.ContactData('Bailey','Bridgeford','BaileyBridgeford@example.com','male','male','72 Lewin Street','BROOKDALE','NSW','2656','(02) 6105 4880','8/19/1942'),
                new sfSandboxSetup.ContactData('Aiden','O\'Loughlin','AidenO\'Loughlin@example.com','male','male','17 Wollombi Street','DURAL','NSW','2330','(02) 4995 6333','6/9/1972'),
                new sfSandboxSetup.ContactData('Hugo','Kyte','HugoKyte@example.com','male','male','6 Badgery Road','TRALEE','NSW','2620','(02) 6144 5567','1/28/1957'),
                new sfSandboxSetup.ContactData('Alyssa','Catani','AlyssaCatani@example.com','female','female','12 Eungella Road','FLAMETREE','QLD','4802','(07) 4929 4727','9/1/1968'),
                new sfSandboxSetup.ContactData('Mikayla','Bennetts','MikaylaBennetts@example.com','female','female','80 Cambridge Street','CAMBRIDGE GARDENS','NSW','2747','(02) 4732 3024','9/4/2001'),
                new sfSandboxSetup.ContactData('Elizabeth','Chauvel','ElizabethChauvel@example.com','female','female','4 Rockhampton Qld','STANAGE','QLD','4702','(07) 4937 5268','12/19/1961'),
                new sfSandboxSetup.ContactData('Marcus','Campbell','MarcusCampbell@example.com','male','male','26 Davidson Street','WELLESLEY ISLANDS','QLD','4871','(07) 4021 6453','11/6/1936'),
                new sfSandboxSetup.ContactData('Ruby','Trevascus','RubyTrevascus@example.com','female','female','56 Walter Crescent','GERRINGONG','NSW','2534','(02) 4206 2200','9/12/1945'),
                new sfSandboxSetup.ContactData('Keira','Heathershaw','KeiraHeathershaw@example.com','female','female','71 Gralow Court','DOLPHIN HEADS','QLD','4740','(07) 4974 6595','10/18/1963'),
                new sfSandboxSetup.ContactData('Kiara','Fowler','KiaraFowler@example.com','female','female','38 Mills Street','EAGLE FARM BC','QLD','4009','(07) 3258 6269','11/27/2000'),
                new sfSandboxSetup.ContactData('Owen','Allport','OwenAllport@example.com','male','male','39 Ocean Pde','JULAGO','QLD','4816','(07) 4082 0587','5/12/1937'),
                new sfSandboxSetup.ContactData('Amber','Theodore','AmberTheodore@example.com','female','female','52 Yangan Drive','MACDONALDS CREEK','NSW','2339','(02) 6718 8612','12/24/1945'),
                new sfSandboxSetup.ContactData('Zara','Scrivener','ZaraScrivener@example.com','female','female','95 Woodwark Crescent','MISSION RIVER','QLD','4874','(07) 4082 2686','2/7/1971'),
                new sfSandboxSetup.ContactData('Liam','Julian','LiamJulian@example.com','male','male','80 McGregor Street','MENINDEE','NSW','2879','(02) 4005 0707','9/25/1957'),
                new sfSandboxSetup.ContactData('Finn','Latham','FinnLatham@example.com','male','male','92 Grandis Road','GLADSTONE','NSW','2440','(02) 6738 4269','8/10/1943'),
                new sfSandboxSetup.ContactData('Kaitlyn','Baldwin','KaitlynBaldwin@example.com','female','female','57 Bayview Close','FLETCHER CREEK','QLD','4714','(07) 4975 3803','12/3/1941'),
                new sfSandboxSetup.ContactData('Nicholas','Shann','NicholasShann@example.com','male','male','30 Shamrock Avenue','MALONEYS BEACH','NSW','2536','(02) 4032 7322','5/13/1990'),
                new sfSandboxSetup.ContactData('Logan','Laffer','LoganLaffer@example.com','male','male','94 Nandewar Street','GIRRALONG','NSW','2449','(02) 6795 5657','10/17/1974'),
                new sfSandboxSetup.ContactData('Spencer','Mei','SpencerMei@example.com','male','male','9 Panorama Road','CALALA','NSW','2340','(02) 6702 3884','1/22/1978'),
                new sfSandboxSetup.ContactData('Makayla','Dollery','MakaylaDollery@example.com','female','female','3 Zipfs Road','PALEN CREEK','QLD','4287','(07) 5644 9812','5/11/1941'),
                new sfSandboxSetup.ContactData('Hunter','Greenham','HunterGreenham@example.com','male','male','87 Sale Street','CADIA','NSW','2800','(02) 4055 2115','6/5/1958'),
                new sfSandboxSetup.ContactData('Alicia','Kenyon','AliciaKenyon@example.com','female','female','63 Border Drive','COOKARDINIA','NSW','2650','(02) 6188 9018','7/26/1935'),
                new sfSandboxSetup.ContactData('Oscar','Strahan','OscarStrahan@example.com','male','male','51 Holdsworth Street','DRUMMOYNE','NSW','2047','(02) 9268 2411','5/6/1955'),
                new sfSandboxSetup.ContactData('Alana','Burgmann','AlanaBurgmann@example.com','female','female','63 Nandewar Street','COFFS HARBOUR PLAZA','NSW','2450','(02) 6708 8837','3/5/1952'),
                new sfSandboxSetup.ContactData('Rory','Allan','RoryAllan@example.com','male','male','67 Thone Street','KIMBRIKI','NSW','2429','(02) 4949 2087','5/8/1964'),
                new sfSandboxSetup.ContactData('Blake','Disher','BlakeDisher@example.com','male','male','10 Albacore Crescent','PHEASANTS NEST','NSW','2574','(02) 4670 4882','7/14/2000'),
                new sfSandboxSetup.ContactData('Mariam','Souter','MariamSouter@example.com','female','female','33 Savages Road','EIGHT MILE PLAINS','QLD','4113','(07) 3102 7072','1/20/1991'),
                new sfSandboxSetup.ContactData('Alice','Vogt','AliceVogt@example.com','female','female','64 Quintin Street','BELLTHORPE','QLD','4514','(07) 3163 4445','6/6/1956'),
                new sfSandboxSetup.ContactData('Madison','Selfe','MadisonSelfe@example.com','female','female','61 Scenic Road','BELOKA','NSW','2628','(02) 6152 9472','2/23/1994'),
                new sfSandboxSetup.ContactData('Annabelle','Kitamura','AnnabelleKitamura@example.com','female','female','77 Boobialla Street','MORUNDAH','NSW','2700','(02) 6114 9813','10/9/1974'),
                new sfSandboxSetup.ContactData('Ryder','Tepper','RyderTepper@example.com','male','male','91 Edward Bennett Drive','HOMEBUSH BAY','NSW','2127','(02) 9951 8897','12/10/1967'),
                new sfSandboxSetup.ContactData('Charlotte','Verdon','CharlotteVerdon@example.com','female','female','66 Bathurst Road','THE LAGOON','NSW','2795','(02) 4047 5237','11/2/1999'),
                new sfSandboxSetup.ContactData('Lola','Seiffert','LolaSeiffert@example.com','female','female','4 Brown Street','PETERSHAM NORTH','NSW','2049','(02) 9946 0166','2/13/1996'),
                new sfSandboxSetup.ContactData('Owen','Francis','OwenFrancis@example.com','male','male','14 Glenpark Road','LAVADIA','NSW','2462','(02) 6792 9586','5/27/1979'),
                new sfSandboxSetup.ContactData('Rebecca','Lienhop','RebeccaLienhop@example.com','female','female','24 Arthur Street','BUDDABADAH','NSW','2825','(02) 4002 2568','1/19/1971'),
                new sfSandboxSetup.ContactData('Daniel','Houtman','DanielHoutman@example.com','male','male','87 Wallum Court','LIMPINWOOD','NSW','2484','(02) 6612 4024','10/8/1943'),
                new sfSandboxSetup.ContactData('Logan','Grayndler','LoganGrayndler@example.com','male','male','50 Wagga Road','YARRAGUNDRY','NSW','2650','(02) 6177 6177','5/5/1974'),
                new sfSandboxSetup.ContactData('Samuel','Allsop','SamuelAllsop@example.com','male','male','75 Treasure Island Avenue','MERRIMAC','QLD','4226','(07) 5639 1553','11/15/1977'),
                new sfSandboxSetup.ContactData('Zara','Jacka','ZaraJacka@example.com','female','female','49 Sydney Road','MONIVAE','NSW','2850','(02) 4098 4153','1/12/1972'),
                new sfSandboxSetup.ContactData('Caleb','Wentworth','CalebWentworth@example.com','male','male','43 Goldfields Road','BRANCHVIEW','QLD','4352','(07) 4530 0159','11/9/1939'),
                new sfSandboxSetup.ContactData('Sophie','Lewin','SophieLewin@example.com','female','female','34 Walder Crescent','ARGOON','QLD','4702','(07) 4979 1786','2/11/1945'),
                new sfSandboxSetup.ContactData('Alexandra','O\'Ferrall','AlexandraO\'Ferrall@example.com','female','female','54 Edgewater Close','BEECROFT PENINSULA','NSW','2540','(02) 4003 1179','11/4/1971'),
                new sfSandboxSetup.ContactData('Mary','Bullen','MaryBullen@example.com','female','female','40 Masthead Drive','NERIMBERA','QLD','4701','(07) 4966 2134','12/14/1995'),
                new sfSandboxSetup.ContactData('Emma','Radcliffe-Brown','EmmaRadcliffe-Brown@example.com','female','female','86 Arthur Street','MOUNT AQUILA','NSW','2820','(02) 4019 4814','1/25/1944'),
                new sfSandboxSetup.ContactData('Jessica','Garran','JessicaGarran@example.com','female','female','64 Sunset Drive','RHYDDING','QLD','4718','(07) 4926 9604','6/10/1979'),
                new sfSandboxSetup.ContactData('Hannah','Litchfield','HannahLitchfield@example.com','female','female','78 Millicent Drive','BROOKFIELD','NSW','2420','(02) 4966 0368','7/7/1951'),
                new sfSandboxSetup.ContactData('Amber','Blackwood','AmberBlackwood@example.com','female','female','64 Argyle Street','STRATFORD','NSW','2422','(02) 4974 9742','2/20/1956'),
                new sfSandboxSetup.ContactData('Cooper','Lions','CooperLions@example.com','male','male','23 Chapman Avenue','JAUNTER','NSW','2787','(02) 4025 3504','10/20/1938'),
                new sfSandboxSetup.ContactData('Joseph','Rowland','JosephRowland@example.com','male','male','66 McGregor Street','MANARA','NSW','2878','(02) 4018 0212','3/10/1981'),
                new sfSandboxSetup.ContactData('Rose','Kershaw','RoseKershaw@example.com','female','female','32 Purcell Place','BLAXLANDS FLAT','NSW','2460','(02) 6731 5111','12/1/1975'),
                new sfSandboxSetup.ContactData('Maya','Hebblethwaite','MayaHebblethwaite@example.com','female','female','75 Seiferts Rd','YEPPOON','QLD','4703','(07) 4995 4491','1/7/1940'),
                new sfSandboxSetup.ContactData('Toby','Luxton','TobyLuxton@example.com','male','male','76 Panorama Road','WARRAL','NSW','2340','(02) 6748 0944','9/3/1940'),
                new sfSandboxSetup.ContactData('Natasha','Chandler','NatashaChandler@example.com','female','female','14 Creek Street','SOUTHWOOD','QLD','4406','(07) 4538 7107','12/30/1981'),
                new sfSandboxSetup.ContactData('Liam','Ewen','LiamEwen@example.com','male','male','57 Sale Street','LOWER LEWIS PONDS','NSW','2800','(02) 4081 2154','8/15/1937'),
                new sfSandboxSetup.ContactData('Caitlin','Curr','CaitlinCurr@example.com','female','female','99 Jacabina Court','LILYVALE','NSW','2508','(02) 4222 9684','12/14/1974'),
                new sfSandboxSetup.ContactData('Justin','Fawkner','JustinFawkner@example.com','male','male','99 Cunningham Street','TAROOM','QLD','4420','(07) 4589 7807','8/31/1948'),
                new sfSandboxSetup.ContactData('Scarlett','Ritchie','ScarlettRitchie@example.com','female','female','47 Begley Street','KALUNGA','QLD','4887','(07) 4066 0868','2/6/1954'),
                new sfSandboxSetup.ContactData('Brodie','Pamphlett','BrodiePamphlett@example.com','male','male','92 Faunce Crescent','WYALONG','NSW','2671','(02) 6149 0524','1/5/1979'),
                new sfSandboxSetup.ContactData('Matilda','Kellermann','MatildaKellermann@example.com','female','female','61 Eshelby Drive','BOHLE PLAINS','QLD','4817','(07) 4004 8366','10/24/1946'),
                new sfSandboxSetup.ContactData('Jacob','Repin','JacobRepin@example.com','male','male','49 Trelawney Street','BONDI JUNCTION PLAZA','NSW','2022','(02) 9018 1399','10/14/1974'),
                new sfSandboxSetup.ContactData('Matilda','Angus','MatildaAngus@example.com','female','female','35 Dalgarno Street','NOWLEY','NSW','2386','(02) 6711 2130','12/27/1998'),
                new sfSandboxSetup.ContactData('Jett','Cleggett','JettCleggett@example.com','male','male','99 Cassinia Street','BLACK CREEK','NSW','2729','(02) 6193 3196','1/2/1989'),
                new sfSandboxSetup.ContactData('Gemma','Craven','GemmaCraven@example.com','female','female','19 Thone Street','KUNDIBAKH','NSW','2429','(02) 4931 1610','8/23/1964'),
                new sfSandboxSetup.ContactData('Elijah','Appleton','ElijahAppleton@example.com','male','male','29 Frencham Street','LAVINGTON','NSW','2641','(02) 6133 0696','2/4/1989'),
                new sfSandboxSetup.ContactData('Hunter','Cornish','HunterCornish@example.com','male','male','22 Edgewater Close','NUMBAA','NSW','2540','(02) 4049 4416','12/20/1945'),
                new sfSandboxSetup.ContactData('Charli','Atherton','CharliAtherton@example.com','female','female','41 Balonne Street','EUNGAI RAIL','NSW','2441','(02) 6789 4789','2/12/1958'),
                new sfSandboxSetup.ContactData('Isabelle','Beak','IsabelleBeak@example.com','female','female','45 Marlin Avenue','GRABINE','NSW','2583','(02) 6156 4011','1/25/1981'),
                new sfSandboxSetup.ContactData('Edward','Carpenter','EdwardCarpenter@example.com','male','male','15 Brentwood Drive','HURRICANE','QLD','4871','(07) 4041 9294','3/11/1965'),
                new sfSandboxSetup.ContactData('Ava','Laing','AvaLaing@example.com','female','female','92 Albert Street','MUNDOOLUN','QLD','4285','(07) 5644 4355','9/14/1995'),
                new sfSandboxSetup.ContactData('Hannah','Lammon','HannahLammon@example.com','female','female','61 Mandible Street','MOUNT ISA','QLD','4825','(07) 4521 8447','4/29/1982'),
                new sfSandboxSetup.ContactData('Charles','Martin','CharlesMartin@example.com','male','male','41 George Street','NARDOO SIDING','QLD','4471','(07) 4535 9833','11/1/1957'),
                new sfSandboxSetup.ContactData('Zara','Dawbin','ZaraDawbin@example.com','female','female','75 Punchs Creek Road','BILLA BILLA','QLD','4390','(07) 4551 7379','10/1/1987'),
                new sfSandboxSetup.ContactData('Tyler','Halloran','TylerHalloran@example.com','male','male','36 Hart Street','WINGEN','NSW','2337','(02) 4955 8631','12/28/1941'),
                new sfSandboxSetup.ContactData('Molly','Woodward','MollyWoodward@example.com','female','female','62 Timms Drive','APPIN','NSW','2560','(02) 4685 1491','5/31/1991'),
                new sfSandboxSetup.ContactData('Austin','Hammond','AustinHammond@example.com','male','male','71 Glen William Road','CAMP CREEK','QLD','4871','(07) 4036 2757','5/23/1935'),
                new sfSandboxSetup.ContactData('Rachel','Bagot','RachelBagot@example.com','female','female','52 Wright Street','COOROY','QLD','4563','(07) 5326 2865','6/11/1962'),
                new sfSandboxSetup.ContactData('Jayden','Monsoor','JaydenMonsoor@example.com','male','male','85 Peninsula Drive','MIRANDA','NSW','2228','(02) 4209 7031','7/29/1960'),
                new sfSandboxSetup.ContactData('Emma','Beale','EmmaBeale@example.com','female','female','59 Davenport Street','ETTAMOGAH','NSW','2640','(02) 6118 8633','6/8/1945'),
                new sfSandboxSetup.ContactData('Archie','Coungeau','ArchieCoungeau@example.com','male','male','89 Albacore Crescent','BOWRAL','NSW','2576','(02) 4639 5640','5/21/1942'),
                new sfSandboxSetup.ContactData('Ruby','Kranewitter','RubyKranewitter@example.com','female','female','44 Cassinia Street','PINE LODGE','NSW','2714','(02) 6110 3504','7/16/1962'),
                new sfSandboxSetup.ContactData('George','Doolette','GeorgeDoolette@example.com','male','male','1 Anderson Street','BOONDALL','QLD','4034','(07) 3231 1698','2/9/1961'),
                new sfSandboxSetup.ContactData('Aiden','Winchcombe','AidenWinchcombe@example.com','male','male','76 Grandis Road','SOUTH KEMPSEY','NSW','2440','(02) 6784 8311','9/24/1989'),
                new sfSandboxSetup.ContactData('Dylan','Hopman','DylanHopman@example.com','male','male','53 Tooraweenah Road','TOTTENHAM','NSW','2873','(02) 4062 2179','2/10/1958'),
                new sfSandboxSetup.ContactData('Mackenzie','Hey','MackenzieHey@example.com','female','female','20 McLaughlin Road','SOUTH RIPLEY','QLD','4306','(07) 4560 3548','12/25/1989'),
                new sfSandboxSetup.ContactData('Taylah','Using','TaylahUsing@example.com','female','female','16 Carolina Park Road','WOY WOY BAY','NSW','2256','(02) 9569 7010','11/12/1974'),
                new sfSandboxSetup.ContactData('Alexander','Varley','AlexanderVarley@example.com','male','male','64 Mackie Street','LAKE TABOURIE','NSW','2539','(02) 4009 2897','5/4/1990'),
                new sfSandboxSetup.ContactData('Logan','Nixon-Smith','LoganNixon-Smith@example.com','male','male','95 Campbells River Road','CUBBA','NSW','2835','(02) 4056 9617','11/2/1993'),
                new sfSandboxSetup.ContactData('Olivia','Beaurepaire','OliviaBeaurepaire@example.com','female','female','81 Stanley Drive','KELSEY CREEK','QLD','4800','(07) 4938 4287','3/17/1939'),
                new sfSandboxSetup.ContactData('Elizabeth','Longman','ElizabethLongman@example.com','female','female','58 Woerdens Road','BORAMBIL','NSW','2329','(02) 4943 3550','2/26/1981'),
                new sfSandboxSetup.ContactData('Samuel','Ancher','SamuelAncher@example.com','male','male','54 McLeans Road','MOONFORD','QLD','4630','(07) 3921 5988','7/2/1955'),
                new sfSandboxSetup.ContactData('Jonathan','McBeath','JonathanMcBeath@example.com','male','male','89 Wright Street','NORTH SHORE','QLD','4565','(07) 5348 7513','4/4/1964'),
                new sfSandboxSetup.ContactData('Oliver','Holtermann','OliverHoltermann@example.com','male','male','10 Gaggin Street','THORNTON','NSW','2322','(02) 4943 7489','3/5/1991'),
                new sfSandboxSetup.ContactData('Caleb','Melvin','CalebMelvin@example.com','male','male','32 Tooraweenah Road','SHALLOW RUSH','NSW','2870','(02) 4021 2307','1/26/1954'),
                new sfSandboxSetup.ContactData('Piper','Musgrave','PiperMusgrave@example.com','female','female','90 Noalimba Avenue','CHERRY TREE HILL','NSW','2360','(02) 6762 1875','8/19/1962'),
                new sfSandboxSetup.ContactData('Lucas','Oldham','LucasOldham@example.com','male','male','19 Banksia Court','MAXWELTON','QLD','4822','(07) 4001 3413','4/4/1978'),
                new sfSandboxSetup.ContactData('Alex','Schardt','AlexSchardt@example.com','male','male','35 Edgewater Close','BUANGLA','NSW','2540','(02) 4072 6950','4/28/1988'),
                new sfSandboxSetup.ContactData('Aaron','Bain','AaronBain@example.com','male','male','78 McLaughlin Road','WIVENHOE POCKET','QLD','4306','(07) 4597 7685','9/5/1978'),
                new sfSandboxSetup.ContactData('Zachary','Dill','ZacharyDill@example.com','male','male','71 Moruya Road','MANAR','NSW','2622','(02) 6101 1689','3/26/1973'),
                new sfSandboxSetup.ContactData('Taj','Mathews','TajMathews@example.com','male','male','19 Derry Street','HUNGERFORD','QLD','4493','(07) 4566 7263','1/13/1967'),
                new sfSandboxSetup.ContactData('Callum','Dugdale','CallumDugdale@example.com','male','male','23 Dalgarno Street','BLUE VALE','NSW','2380','(02) 6754 5229','8/7/1991'),
                new sfSandboxSetup.ContactData('Dakota','Gaffney','DakotaGaffney@example.com','female','female','93 Davidson Street','RAVENSWORTH','QLD','4871','(07) 4032 5087','6/20/1988'),
                new sfSandboxSetup.ContactData('Lola','Lyttle','LolaLyttle@example.com','female','female','92 Wynyard Street','WINDOWIE','NSW','2720','(02) 6115 3416','7/15/1947'),
                new sfSandboxSetup.ContactData('Isabel','Bindon','IsabelBindon@example.com','female','female','27 Cecil Street','WESTLEIGH','NSW','2120','(02) 4302 8774','3/18/1966'),
                new sfSandboxSetup.ContactData('Lilian','Keane','LilianKeane@example.com','female','female','83 Raglan Street','ALICE CREEK','QLD','4610','(07) 4545 4427','8/28/1939'),
                new sfSandboxSetup.ContactData('Kayla','Nielsen','KaylaNielsen@example.com','female','female','55 Scenic Road','PILOT WILDERNESS','NSW','2627','(02) 6180 5427','1/17/1939'),
                new sfSandboxSetup.ContactData('Julian','Merrett','JulianMerrett@example.com','male','male','20 Holdsworth Street','ST PETERS','NSW','2044','(02) 9117 4996','6/24/1978'),
                new sfSandboxSetup.ContactData('Owen','Waley','OwenWaley@example.com','male','male','66 Kerma Crescent','RYDAL','NSW','2790','(02) 4089 7740','9/4/1996'),
                new sfSandboxSetup.ContactData('Eve','Holloway','EveHolloway@example.com','female','female','11 Banksia Court','WOOLGAR','QLD','4822','(07) 4053 2386','4/2/1951'),
                new sfSandboxSetup.ContactData('Rachel','Bland','RachelBland@example.com','female','female','75 Woodlands Avenue','GUILDFORD','NSW','2161','(02) 9013 2020','4/26/1973'),
                new sfSandboxSetup.ContactData('Nathan','Boyes','NathanBoyes@example.com','male','male','36 Fernleigh Ave','GIRILAMBONE','NSW','2831','(02) 4072 9099','2/10/1964'),
                new sfSandboxSetup.ContactData('Lucinda','Mawby','LucindaMawby@example.com','female','female','21 Cambridge Street','CASTLEREAGH','NSW','2749','(02) 4720 8200','12/9/1980'),
                new sfSandboxSetup.ContactData('Sara','Newcomb','SaraNewcomb@example.com','female','female','26 Shirley Street','STAPYLTON','QLD','4207','(07) 3876 6629','11/22/1998'),
                new sfSandboxSetup.ContactData('Bella','McCall','BellaMcCall@example.com','female','female','86 Punchs Creek Road','GOONDIWINDI','QLD','4390','(07) 4537 6562','10/8/1989'),
                new sfSandboxSetup.ContactData('Lucy','Greenway','LucyGreenway@example.com','female','female','3 Queen Street','CROMER','NSW','2099','(02) 9990 1464','5/6/1936'),
                new sfSandboxSetup.ContactData('Piper','Kenyon','PiperKenyon@example.com','female','female','59 Yangan Drive','LIMBRI','NSW','2352','(02) 6799 0667','9/24/1955'),
                new sfSandboxSetup.ContactData('Hugo','Colson','HugoColson@example.com','male','male','25 Hodgson St','WOMINA','QLD','4370','(07) 4598 5139','6/9/1999'),
                new sfSandboxSetup.ContactData('Poppy','Thomas','PoppyThomas@example.com','female','female','48 Moruya Road','SASSAFRAS','NSW','2622','(02) 6189 3289','7/16/1953'),
                new sfSandboxSetup.ContactData('Hamish','Auricht','HamishAuricht@example.com','male','male','19 Railway Street','FELTON SOUTH','QLD','4358','(07) 4559 2910','11/20/1949'),
                new sfSandboxSetup.ContactData('Ella','Goldfinch','EllaGoldfinch@example.com','female','female','75 Kintyre Street','MANSFIELD DC','QLD','4122','(07) 3378 1704','8/21/1948'),
                new sfSandboxSetup.ContactData('Daniel','MacLaurin','DanielMacLaurin@example.com','male','male','65 Jones Road','ANNERLEY','QLD','4103','(07) 3287 5464','4/1/1969'),
                new sfSandboxSetup.ContactData('Finn','Wienholt','FinnWienholt@example.com','male','male','83 Reynolds Road','LAKE BORUMBA','QLD','4570','(07) 5392 1991','6/20/1955'),
                new sfSandboxSetup.ContactData('Mason','Llewelyn','MasonLlewelyn@example.com','male','male','89 Cecil Street','OATLANDS','NSW','2117','(02) 9905 7569','8/2/1978'),
                new sfSandboxSetup.ContactData('Angus','Loewe','AngusLoewe@example.com','male','male','21 Faunce Crescent','WARGAMBEGAL','NSW','2672','(02) 6159 4536','4/28/1992'),
                new sfSandboxSetup.ContactData('Dean','Cubadgee','DeanCubadgee@example.com','male','male','34 Carolina Park Road','LITTLE WOBBY','NSW','2256','(02) 9681 9188','9/17/1966'),
                new sfSandboxSetup.ContactData('Riley','Want','RileyWant@example.com','male','male','20 Campbells River Road','WHITE CLIFFS','NSW','2836','(02) 4046 5351','10/6/1944'),
                new sfSandboxSetup.ContactData('Lauren','Ennor','LaurenEnnor@example.com','female','female','83 Grandis Road','SHERWOOD','NSW','2440','(02) 6778 0615','12/27/1956'),
                new sfSandboxSetup.ContactData('Bethany','Gladys','BethanyGladys@example.com','female','female','27 Farnell Street','GUMBLE','NSW','2865','(02) 4041 0550','11/24/1972'),
                new sfSandboxSetup.ContactData('Hudson','Hopley','HudsonHopley@example.com','male','male','1 Cofton Close','CLOUDS CREEK','NSW','2453','(02) 6751 6893','8/30/2000'),
                new sfSandboxSetup.ContactData('Lincoln','Dougherty','LincolnDougherty@example.com','male','male','19 Carolina Park Road','NORTH AVOCA','NSW','2260','(02) 9835 5844','6/18/1988'),
                new sfSandboxSetup.ContactData('Claudia','Keynes','ClaudiaKeynes@example.com','female','female','19 Whitehaven Crescent','BAYVIEW HEIGHTS','QLD','4868','(07) 4040 6529','6/13/1939'),
                new sfSandboxSetup.ContactData('Isabelle','Moses','IsabelleMoses@example.com','female','female','39 Hart Street','BRAWBOY','NSW','2337','(02) 4989 7062','8/15/1993'),
                new sfSandboxSetup.ContactData('Tyson','Edmond','TysonEdmond@example.com','male','male','56 Amiens Road','HAVILAH','NSW','2850','(02) 4072 4481','2/7/1999'),
                new sfSandboxSetup.ContactData('Brock','Walder','BrockWalder@example.com','male','male','2 Badgery Road','SUTTON','NSW','2620','(02) 6143 4713','12/20/1976'),
                new sfSandboxSetup.ContactData('Zac','Banks','ZacBanks@example.com','male','male','23 Ulomogo Street','KICKABIL','NSW','2830','(02) 4030 2332','9/27/1980'),
                new sfSandboxSetup.ContactData('Jai','Wilhelm','JaiWilhelm@example.com','male','male','86 Ocean Street','THE ROCKS','NSW','2000','(02) 8998 8041','4/21/1950'),
                new sfSandboxSetup.ContactData('Kaitlyn','Rusconi','KaitlynRusconi@example.com','female','female','9 Masthead Drive','ALLENSTOWN','QLD','4700','(07) 4921 5381','7/25/1947'),
                new sfSandboxSetup.ContactData('Justin','Dechaineux','JustinDechaineux@example.com','male','male','52 Eungella Road','AIRDMILLAN','QLD','4807','(07) 4066 8039','10/22/1958'),
                new sfSandboxSetup.ContactData('Ali','Cattanach','AliCattanach@example.com','male','male','31 Norton Street','DUFFYS FOREST','NSW','2084','(02) 9539 2262','9/16/1973'),
                new sfSandboxSetup.ContactData('Benjamin','Ransom','BenjaminRansom@example.com','male','male','95 Boonah Qld','COOLANA','QLD','4311','(07) 4590 2075','7/20/1941'),
                new sfSandboxSetup.ContactData('Max','Hardie','MaxHardie@example.com','male','male','70 Cambridge Street','AGNES BANKS','NSW','2753','(02) 4701 7938','10/13/1939'),
                new sfSandboxSetup.ContactData('Andrew','Barkly','AndrewBarkly@example.com','male','male','28 Rimbanda Road','EMMAVILLE','NSW','2371','(02) 6702 5578','1/31/1980'),
                new sfSandboxSetup.ContactData('Jesse','Dowling','JesseDowling@example.com','male','male','85 Lowe Street','BROADMERE','QLD','4420','(07) 4535 7470','8/4/1977'),
                new sfSandboxSetup.ContactData('Harry','Richmond','HarryRichmond@example.com','male','male','52 Feather Street','YUGAR','QLD','4520','(07) 3947 4588','1/6/1971'),
                new sfSandboxSetup.ContactData('Amelie','Plummer','AmeliePlummer@example.com','female','female','97 Faulkner Street','DONALD CREEK','NSW','2350','(02) 6713 3386','5/10/1968'),
                new sfSandboxSetup.ContactData('Charles','Welsh','CharlesWelsh@example.com','male','male','73 Elizabeth Street','MARYS CREEK','QLD','4570','(07) 5375 3101','9/23/1972'),
                new sfSandboxSetup.ContactData('Rachel','Bustard','RachelBustard@example.com','female','female','81 Norton Street','HORNSBY','NSW','2077','(02) 4392 9028','6/29/1989'),
                new sfSandboxSetup.ContactData('Jasmine','Burwell','JasmineBurwell@example.com','female','female','95 Passage Avenue','PALM COVE','QLD','4879','(07) 4094 8865','11/4/1967'),
                new sfSandboxSetup.ContactData('Jamie','Smythe','JamieSmythe@example.com','male','male','4 Ageston Road','KULGUN','QLD','4309','(07) 4586 0605','4/6/1972'),
                new sfSandboxSetup.ContactData('Bella','Strempel','BellaStrempel@example.com','female','female','40 Whitehaven Crescent','NGATJAN','QLD','4859','(07) 4094 6800','12/12/2001'),
                new sfSandboxSetup.ContactData('Amy','Spark','AmySpark@example.com','female','female','52 Oriana Street','POINT WOLSTONCROFT','NSW','2259','(02) 9834 3415','11/26/1970'),
                new sfSandboxSetup.ContactData('Luca','Asche','LucaAsche@example.com','male','male','93 Village Drive','ABBOTSBURY','NSW','2176','(02) 9569 9503','2/1/2001'),
                new sfSandboxSetup.ContactData('Madison','McCorkindale','MadisonMcCorkindale@example.com','female','female','92 Marlin Avenue','COTTAWALLA','NSW','2583','(02) 6126 3355','9/30/1995'),
                new sfSandboxSetup.ContactData('Madeleine','Menhennitt','MadeleineMenhennitt@example.com','female','female','84 Glen William Road','CLARAVILLE','QLD','4871','(07) 4046 4838','4/13/1994'),
                new sfSandboxSetup.ContactData('James','Haszler','JamesHaszler@example.com','male','male','52 Cofton Close','BILLYS CREEK','NSW','2453','(02) 6734 9578','7/6/1988'),
                new sfSandboxSetup.ContactData('Jaxon','Ratcliffe','JaxonRatcliffe@example.com','male','male','43 Cedar Street','TREBONNE','QLD','4850','(07) 4048 4450','10/11/1968'),
                new sfSandboxSetup.ContactData('Brodie','Broadbent','BrodieBroadbent@example.com','male','male','5 Dalgarno Street','TAMBAR SPRINGS','NSW','2381','(02) 6737 8654','7/13/1962'),
                new sfSandboxSetup.ContactData('Mitchell','Coburn','MitchellCoburn@example.com','male','male','97 Chester Street','YELGUN','NSW','2483','(02) 6788 2214','10/9/1968'),
                new sfSandboxSetup.ContactData('Liam','Bright','LiamBright@example.com','male','male','95 Grandis Road','BELMORE RIVER','NSW','2440','(02) 6793 1955','5/13/1963'),
                new sfSandboxSetup.ContactData('Sean','Rintel','SeanRintel@example.com','male','male','67 Junction St','MOONBRIA','NSW','2710','(02) 6179 5182','3/8/1953'),
                new sfSandboxSetup.ContactData('Caleb','West','CalebWest@example.com','male','male','87 Walder Crescent','GOOWARRA','QLD','4702','(07) 4968 4206','1/1/1975'),
                new sfSandboxSetup.ContactData('Ava','Hacking','AvaHacking@example.com','female','female','47 Spencer Street','COOLOOLA','QLD','4580','(07) 5317 7158','4/14/1953'),
                new sfSandboxSetup.ContactData('Cameron','D\'Albertis','CameronD\'Albertis@example.com','male','male','24 Boonah Qld','CHURCHABLE','QLD','4311','(07) 4548 5707','11/24/1989'),
                new sfSandboxSetup.ContactData('Elizabeth','Clutterbuck','ElizabethClutterbuck@example.com','female','female','88 Frencham Street','DAYSDALE','NSW','2646','(02) 6107 6550','5/11/1975'),
                new sfSandboxSetup.ContactData('Amelia','Wienholt','AmeliaWienholt@example.com','female','female','89 Creek Street','KOORALGIN','QLD','4402','(07) 4541 6846','8/9/2001'),
                new sfSandboxSetup.ContactData('Flynn','Sholl','FlynnSholl@example.com','male','male','31 Wallum Court','UPPER CRYSTAL CREEK','NSW','2484','(02) 6627 7913','4/10/1935'),
                new sfSandboxSetup.ContactData('Leo','Collins','LeoCollins@example.com','male','male','96 Elizabeth Street','MCINTOSH CREEK','QLD','4570','(07) 5378 7072','3/5/1946'),
                new sfSandboxSetup.ContactData('Jamie','Adam','JamieAdam@example.com','male','male','2 Punchs Creek Road','LUNDAVRA','QLD','4390','(07) 4546 1515','3/14/1937'),
                new sfSandboxSetup.ContactData('Hannah','Mackerras','HannahMackerras@example.com','female','female','94 Wagga Road','WAGGA WAGGA SOUTH','NSW','2650','(02) 6171 8453','4/26/1972'),
                new sfSandboxSetup.ContactData('Nate','Whittell','NateWhittell@example.com','male','male','53 Scenic Road','BULLOCKS FLAT','NSW','2627','(02) 6102 1877','2/8/1987'),
                new sfSandboxSetup.ContactData('Edward','Blanchard','EdwardBlanchard@example.com','male','male','54 Round Drive','MACQUARIE HILLS','NSW','2285','(02) 4914 9014','7/28/2001'),
                new sfSandboxSetup.ContactData('Julian','Humffray','JulianHumffray@example.com','male','male','70 Kogil Street','DELUNGRA','NSW','2403','(02) 6798 4271','9/10/1974'),
                new sfSandboxSetup.ContactData('Imogen','O\'Meara','ImogenO\'Meara@example.com','female','female','37 Tooraweenah Road','GRAWLIN','NSW','2871','(02) 4068 3673','8/21/1951'),
                new sfSandboxSetup.ContactData('Summer','Baughan','SummerBaughan@example.com','female','female','48 Avondale Drive','BELLAMBI','NSW','2518','(02) 4243 9305','10/3/1983'),
                new sfSandboxSetup.ContactData('George','Hervey','GeorgeHervey@example.com','male','male','56 Carolina Park Road','SHELLY BEACH','NSW','2261','(02) 9757 5542','7/20/1968'),
                new sfSandboxSetup.ContactData('Joshua','Julian','JoshuaJulian@example.com','male','male','28 Cassinia Street','TOCUMWAL','NSW','2714','(02) 6187 1639','9/22/1974'),
                new sfSandboxSetup.ContactData('Abigail','Prinsep','AbigailPrinsep@example.com','female','female','65 Whitehaven Crescent','MURRAY UPPER','QLD','4854','(07) 4085 4515','12/19/1992'),
                new sfSandboxSetup.ContactData('Jamie','McCall','JamieMcCall@example.com','male','male','14 Magnolia Drive','KANGAROO POINT','NSW','2224','(02) 4207 3023','9/12/1969'),
                new sfSandboxSetup.ContactData('Evie','Hammond','EvieHammond@example.com','female','female','36 Millicent Drive','UNDERBANK','NSW','2420','(02) 4950 1465','8/20/1977'),
                new sfSandboxSetup.ContactData('Hunter','Woodward','HunterWoodward@example.com','male','male','17 Davenport Street','COOLUMBOOKA','NSW','2632','(02) 6196 7647','12/8/1968'),
                new sfSandboxSetup.ContactData('Edward','Edouard','EdwardEdouard@example.com','male','male','23 Panorama Road','SOMERTON','NSW','2340','(02) 6751 5610','7/26/1997'),
                new sfSandboxSetup.ContactData('Justin','Kavanagh','JustinKavanagh@example.com','male','male','44 Buoro Street','FARLEIGH','QLD','4741','(07) 4916 2054','10/25/1952'),
                new sfSandboxSetup.ContactData('Charlotte','Vigano','CharlotteVigano@example.com','female','female','16 Woerdens Road','MUSWELLBROOK','NSW','2333','(02) 4988 8025','12/30/1986'),
                new sfSandboxSetup.ContactData('Connor','Crummer','ConnorCrummer@example.com','male','male','11 Village Drive','CANLEY VALE','NSW','2166','(02) 9104 2448','9/22/1953'),
                new sfSandboxSetup.ContactData('James','Cook','JamesCook@example.com','male','male','67 Elizabeth Street','ST MARY','QLD','4570','(07) 5371 9564','8/25/1978'),
                new sfSandboxSetup.ContactData('Gabriel','Dunshea','GabrielDunshea@example.com','male','male','60 Panorama Road','HANGING ROCK','NSW','2340','(02) 6749 4879','4/4/1976'),
                new sfSandboxSetup.ContactData('Daniel','Mair','DanielMair@example.com','male','male','87 Berambing Crescent','HIGHER MACDONALD','NSW','2775','(02) 8854 8194','2/27/1976'),
                new sfSandboxSetup.ContactData('Evie','Greene','EvieGreene@example.com','female','female','73 Jones Road','PINJARRA HILLS','QLD','4069','(07) 3882 3605','11/30/1946'),
                new sfSandboxSetup.ContactData('John','Orr','JohnOrr@example.com','male','male','17 Boulter Close','FITZGERALD CREEK','QLD','4860','(07) 4097 1805','3/12/1974'),
                new sfSandboxSetup.ContactData('Abby','Lyell','AbbyLyell@example.com','female','female','26 Cassinia Street','MUNDARLO','NSW','2729','(02) 6109 3576','1/30/1999'),
                new sfSandboxSetup.ContactData('Jade','Knox','JadeKnox@example.com','female','female','13 Dora Creek','NIMBIN','NSW','2480','(02) 6799 7873','6/28/1976'),
                new sfSandboxSetup.ContactData('Tristan','Laver','TristanLaver@example.com','male','male','10 Berambing Crescent','MOUNT DRUITT','NSW','2770','(02) 4716 7306','4/16/1996'),
                new sfSandboxSetup.ContactData('Scarlett','Strickland','ScarlettStrickland@example.com','female','female','37 Kintyre Street','CORNUBIA','QLD','4130','(07) 3627 4184','3/2/1976'),
                new sfSandboxSetup.ContactData('Matilda','Truman','MatildaTruman@example.com','female','female','42 Spencer Street','SUNSHINE BEACH','QLD','4567','(07) 5398 1811','8/13/1949'),
                new sfSandboxSetup.ContactData('Nathan','Archibald','NathanArchibald@example.com','male','male','18 Peninsula Drive','MAIANBAR','NSW','2230','(02) 4204 7608','11/13/2000'),
                new sfSandboxSetup.ContactData('Ellie','McMeckan','EllieMcMeckan@example.com','female','female','96 McLaughlin Road','RIPLEY','QLD','4306','(07) 4522 3007','1/1/1999'),
                new sfSandboxSetup.ContactData('James','Beatty','JamesBeatty@example.com','male','male','57 Railway Street','LINTHORPE','QLD','4356','(07) 4530 0949','3/14/1984'),
                new sfSandboxSetup.ContactData('Ryan','Curtain','RyanCurtain@example.com','male','male','93 Rockhampton Qld','PHEASANT CREEK','QLD','4702','(07) 4921 7472','2/5/1955'),
                new sfSandboxSetup.ContactData('Laura','Pizzey','LauraPizzey@example.com','female','female','92 Treasure Island Avenue','FERNY GLEN','QLD','4275','(07) 5631 2958','9/12/1980'),
                new sfSandboxSetup.ContactData('Henry','Prell','HenryPrell@example.com','male','male','64 Elizabeth Street','WOLVI','QLD','4570','(07) 5318 6801','8/7/1979'),
                new sfSandboxSetup.ContactData('Ryan','Braddon','RyanBraddon@example.com','male','male','15 Walter Crescent','BOMBO','NSW','2533','(02) 4252 1660','9/29/1935'),
                new sfSandboxSetup.ContactData('Brayden','Krefft','BraydenKrefft@example.com','male','male','54 Boorie Road','GOODGER','QLD','4610','(07) 4581 2194','5/10/1981'),
                new sfSandboxSetup.ContactData('Ben','Florey','BenFlorey@example.com','male','male','41 Glenpark Road','LAKE HIAWATHA','NSW','2462','(02) 6711 9113','3/2/1973'),
                new sfSandboxSetup.ContactData('Mary','Le Rennetel','MaryLe Rennetel@example.com','female','female','37 Ocean Pde','MINGELA','QLD','4816','(07) 4080 4624','2/18/1967'),
                new sfSandboxSetup.ContactData('Milla','Hort','MillaHort@example.com','female','female','34 Seninis Road','CLUDEN','QLD','4811','(07) 4036 6334','7/7/1941'),
                new sfSandboxSetup.ContactData('Alannah','Finnerty','AlannahFinnerty@example.com','female','female','42 Eurack Court','AURVILLE','NSW','2587','(02) 6140 1545','10/12/1943'),
                new sfSandboxSetup.ContactData('Zoe','Elliott','ZoeElliott@example.com','female','female','94 Warren Avenue','CAMS WHARF','NSW','2281','(02) 4934 1887','1/7/1978'),
                new sfSandboxSetup.ContactData('Savannah','Charlesworth','SavannahCharlesworth@example.com','female','female','46 Seninis Road','EIGHT MILE CREEK','QLD','4807','(07) 4005 7633','4/23/1945'),
                new sfSandboxSetup.ContactData('Sebastian','Rankin','SebastianRankin@example.com','male','male','57 McLaughlin Road','VERNOR','QLD','4306','(07) 4528 6266','1/27/1966'),
                new sfSandboxSetup.ContactData('Mason','Macansh','MasonMacansh@example.com','male','male','36 Ross Street','BENOWA','QLD','4217','(07) 5675 0522','3/15/1948'),
                new sfSandboxSetup.ContactData('Bailey','Kenny','BaileyKenny@example.com','male','male','35 Wallum Court','MURWILLUMBAH','NSW','2484','(02) 6696 3519','10/20/1992'),
                new sfSandboxSetup.ContactData('Ryder','Lihou','RyderLihou@example.com','male','male','68 Eshelby Drive','HERVEY RANGE','QLD','4817','(07) 4089 9705','5/11/1938'),
                new sfSandboxSetup.ContactData('Beau','Vale','BeauVale@example.com','male','male','80 Seninis Road','SWANS LAGOON','QLD','4807','(07) 4010 4679','10/11/1977'),
                new sfSandboxSetup.ContactData('Phoebe','McColl','PhoebeMcColl@example.com','female','female','8 Davis Street','STAFFORD BC','QLD','4053','(07) 3504 7738','7/13/1946'),
                new sfSandboxSetup.ContactData('Levi','Osburn','LeviOsburn@example.com','male','male','96 Hodgson St','ROSENTHAL HEIGHTS','QLD','4370','(07) 4597 1724','12/26/1998'),
                new sfSandboxSetup.ContactData('Sara','Craig','SaraCraig@example.com','female','female','91 Ryker Rd','FOREST CREEK','QLD','4873','(07) 4024 2182','7/16/1985'),
                new sfSandboxSetup.ContactData('Ethan','Schmella','EthanSchmella@example.com','male','male','54 Lowe Street','CHINCHILLA','QLD','4413','(07) 4597 4813','6/27/1975'),
                new sfSandboxSetup.ContactData('Ashton','Haylen','AshtonHaylen@example.com','male','male','94 Hay Point Road','SLADE POINT','QLD','4740','(07) 4997 0133','7/29/1963'),
                new sfSandboxSetup.ContactData('Zane','Vlamingh','ZaneVlamingh@example.com','male','male','31 Bayview Close','ST LAWRENCE','QLD','4707','(07) 4935 9059','10/17/1988'),
                new sfSandboxSetup.ContactData('Zoe','Walter','ZoeWalter@example.com','female','female','63 McLeans Road','URRAWEEN','QLD','4655','(07) 3677 7459','10/9/1978'),
                new sfSandboxSetup.ContactData('Gabriella','Toutcher','GabriellaToutcher@example.com','female','female','72 Woodwark Crescent','INNOT HOT SPRINGS','QLD','4872','(07) 4012 5355','9/20/1962'),
                new sfSandboxSetup.ContactData('Brooke','Rossiter','BrookeRossiter@example.com','female','female','65 Berambing Crescent','CENTRAL MACDONALD','NSW','2775','(02) 8893 3274','6/13/1955'),
                new sfSandboxSetup.ContactData('Samantha','Ness','SamanthaNess@example.com','female','female','56 Spencer Street','KIN KIN','QLD','4571','(07) 5306 5094','2/27/1982'),
                new sfSandboxSetup.ContactData('Lilian','Neil','LilianNeil@example.com','female','female','11 Purcell Place','COLLUM COLLUM','NSW','2460','(02) 6797 7983','8/7/1944'),
                new sfSandboxSetup.ContactData('Luca','Tiegs','LucaTiegs@example.com','male','male','33 Boorie Road','OKEDEN','QLD','4613','(07) 4540 2249','3/3/1960'),
                new sfSandboxSetup.ContactData('Matilda','Callanan','MatildaCallanan@example.com','female','female','72 Creegans Road','GRADYS CREEK','NSW','2474','(02) 6726 8738','10/13/1972'),
                new sfSandboxSetup.ContactData('James','Silcock','JamesSilcock@example.com','male','male','84 Ross Street','BROADBEACH','QLD','4218','(07) 5606 9016','3/28/1956'),
                new sfSandboxSetup.ContactData('Stella','Beal','StellaBeal@example.com','female','female','68 Campbells River Road','CURBAN','NSW','2827','(02) 4032 4130','1/19/2002'),
                new sfSandboxSetup.ContactData('Lachlan','Fegan','LachlanFegan@example.com','male','male','72 Cambridge Street','CAMBRIDGE PARK','NSW','2747','(02) 4746 1782','7/24/1938'),
                new sfSandboxSetup.ContactData('Chloe','Ridley','ChloeRidley@example.com','female','female','58 Creek Street','SILVERLEIGH','QLD','4401','(07) 4598 7195','10/10/1940'),
                new sfSandboxSetup.ContactData('Beau','Rumpf','BeauRumpf@example.com','male','male','14 Aquatic Road','KUNDLE KUNDLE','NSW','2430','(02) 4920 9432','5/21/1962'),
                new sfSandboxSetup.ContactData('Katie','Marshall','KatieMarshall@example.com','female','female','95 Wright Street','CARTERS RIDGE','QLD','4563','(07) 5388 0571','4/25/1952'),
                new sfSandboxSetup.ContactData('Xavier','Whiddon','XavierWhiddon@example.com','male','male','15 Railway Street','EVANSLEA','QLD','4356','(07) 4510 4277','8/5/1951'),
                new sfSandboxSetup.ContactData('Sophie','McKenna','SophieMcKenna@example.com','female','female','31 Spencer Street','FEDERAL','QLD','4568','(07) 5354 9760','6/12/1952'),
                new sfSandboxSetup.ContactData('Timothy','Brockman','TimothyBrockman@example.com','male','male','87 Masthead Drive','RAGLAN','QLD','4697','(07) 4904 3482','2/15/1959'),
                new sfSandboxSetup.ContactData('Cody','Serisier','CodySerisier@example.com','male','male','26 Sale Street','SUMMER HILL CREEK','NSW','2800','(02) 4048 8759','12/2/1982'),
                new sfSandboxSetup.ContactData('Mason','Mailey','MasonMailey@example.com','male','male','5 Border Drive','BOOK BOOK','NSW','2650','(02) 6172 0689','5/24/1942'),
                new sfSandboxSetup.ContactData('Georgia','Reade','GeorgiaReade@example.com','female','female','68 Thone Street','KARAAK FLAT','NSW','2429','(02) 4909 3915','10/10/1983'),
                new sfSandboxSetup.ContactData('Rory','McKenny','RoryMcKenny@example.com','male','male','72 Masthead Drive','NERIMBERA','QLD','4701','(07) 4947 1823','7/21/1967')
        };

        return contactInfo;
    }

    public static List<sfSandboxSetup.ContactData> readContactDataForPrograms()
    {
        List<sfSandboxSetup.ContactData> contactInfo = new List<sfSandboxSetup.ContactData> {
                new sfSandboxSetup.ContactData('Ryan','Cleggett','RyanCleggett@example.com','male','male','80 Queen Street','CROMER','NSW','2099','(02) 9399 7261','1/24/1985'),
                new sfSandboxSetup.ContactData('Sofia','Cuper','SofiaCuper@example.com','female','female','56 Tennyson Road','MARRICKVILLE METRO','NSW','2204','(02) 9487 9259','12/8/1981'),
                new sfSandboxSetup.ContactData('Patrick','Boniwell','PatrickBoniwell@example.com','male','male','44 Marlin Avenue','GOONDAH','NSW','2582','(02) 6101 3127','6/21/1993'),
                new sfSandboxSetup.ContactData('Jorja','Driscoll','JorjaDriscoll@example.com','female','female','35 Jones Road','MOGGILL','QLD','4070','(07) 3026 8760','5/26/1995'),
                new sfSandboxSetup.ContactData('Indiana','Fitzsimons','IndianaFitzsimons@example.com','female','female','95 Edward Bennett Drive','HOMEBUSH BAY','NSW','2127','(02) 9363 2028','9/6/1990'),
                new sfSandboxSetup.ContactData('Amber','Daley','AmberDaley@example.com','female','female','6 Frencham Street','MOUNTAIN CREEK','NSW','2644','(02) 6175 7940','2/21/1936'),
                new sfSandboxSetup.ContactData('Ruby','Watriama','RubyWatriama@example.com','female','female','68 Moruya Road','KAIN','NSW','2622','(02) 6104 4372','1/30/1989'),
                new sfSandboxSetup.ContactData('Luca','Jordan','LucaJordan@example.com','male','male','78 Derry Street','THARGOMINDAH','QLD','4492','(07) 4558 3953','7/16/1967'),
                new sfSandboxSetup.ContactData('Ryder','Cecilia','RyderCecilia@example.com','male','male','83 Old Tenterfield Road','PIKAPENE','NSW','2469','(02) 6714 9769','7/2/1944'),
                new sfSandboxSetup.ContactData('Ethan','Laboureyas','EthanLaboureyas@example.com','male','male','6 Spencer Street','KILKIVAN','QLD','4600','(07) 5358 6955','10/11/1971'),
                new sfSandboxSetup.ContactData('Aidan','Robey','AidanRobey@example.com','male','male','88 Ulomogo Street','THE SPRINGS','NSW','2830','(02) 4002 4889','9/4/1996'),
                new sfSandboxSetup.ContactData('Rory','Welsh','RoryWelsh@example.com','male','male','13 Sunset Drive','CLERMONT','QLD','4721','(07) 4969 2505','2/25/1948'),
                new sfSandboxSetup.ContactData('Spencer','Birdwood','SpencerBirdwood@example.com','male','male','88 Plug Street','GREEN HILLS','NSW','2365','(02) 6763 7588','11/15/1943'),
                new sfSandboxSetup.ContactData('Nicholas','Wettenhall','NicholasWettenhall@example.com','male','male','23 Woodlands Avenue','PARRAMATTA WESTFIELD','NSW','2150','(02) 9186 6454','12/28/1973'),
                new sfSandboxSetup.ContactData('Christopher','Pottinger','ChristopherPottinger@example.com','male','male','3 Campbells River Road','NOONA','NSW','2835','(02) 4009 5605','6/23/1958'),
                new sfSandboxSetup.ContactData('Sam','Gagai','SamGagai@example.com','male','male','41 Whitehaven Crescent','WALTER HILL','QLD','4854','(07) 4093 7697','10/24/1940'),
                new sfSandboxSetup.ContactData('Finn','Molineux','FinnMolineux@example.com','male','male','20 Marlin Avenue','GURRUNDAH','NSW','2581','(02) 6171 9186','2/4/1962'),
                new sfSandboxSetup.ContactData('Layla','McGrath','LaylaMcGrath@example.com','female','female','51 Bresnahans Lane','BENDEELA','NSW','2577','(02) 4697 8537','3/19/1943'),
                new sfSandboxSetup.ContactData('Jack','Girardin','JackGirardin@example.com','male','male','43 Glenpark Road','NORTH BOAMBEE VALLEY','NSW','2450','(02) 6783 3019','7/7/1958'),
                new sfSandboxSetup.ContactData('Chelsea','Macnamara','ChelseaMacnamara@example.com','female','female','31 Prince Street','KYARRAN','NSW','2460','(02) 6767 1471','9/22/1960'),
                new sfSandboxSetup.ContactData('Kayla','Pritchard','KaylaPritchard@example.com','female','female','94 Hodgson St','CUNNINGHAM','QLD','4370','(07) 4581 2584','8/3/1996'),
                new sfSandboxSetup.ContactData('Hudson','Lakeland','HudsonLakeland@example.com','male','male','98 Mackie Street','WEST NOWRA','NSW','2541','(02) 4068 7059','3/27/1944'),
                new sfSandboxSetup.ContactData('Ellie','Mayo','EllieMayo@example.com','female','female','89 Walder Crescent','ANAKIE','QLD','4702','(07) 4993 4378','12/16/1943'),
                new sfSandboxSetup.ContactData('Lilly','Vaughn','LillyVaughn@example.com','female','female','17 Cambridge Street','FREEMANS REACH','NSW','2756','(02) 4761 3900','3/4/1975'),
                new sfSandboxSetup.ContactData('Hannah','Tindal','HannahTindal@example.com','female','female','1 Jacabina Court','DURANBAH','NSW','2487','(02) 6612 9761','5/1/1996'),
                new sfSandboxSetup.ContactData('Rachel','Cade','RachelCade@example.com','female','female','7 Boobialla Street','CALORAFIELD','NSW','2705','(02) 6112 7975','7/7/1966')
        };

        return contactInfo;
    }

    public static List<String> getAddresses()
    {
        List<String> addresses = new List<String>
        {
                'Apt. 930 04 Beatty Expressway\nPort Elroy, WA 2610',
                'Unit 04 044 Mateo Parkway\nMelvinville, QLD 2920',
                '8 Towne Interchange\nPaulfort, NT 2686',
                '07 Ona Landing\nLouiestad, NT 2081',
                '070 Jay Ground\nBaileyburgh, NT 8443',
                '0 Willa Artery\nWest Deontaeborough, VIC 2628',
                '547B Howell Rotary\nDejontown, QLD 2311',
                'Apt. 190 65 Maude Bridge\nBechtelarberg, WA 1636',
                'Suite 526 08 Ruthe Rest\nEmmerichfurt, NT 2354',
                '711B Williamson Mall\nWolfstad, NT 2776',
                '272 / 228 Markus Chase\nBrycenburgh, WA 2567',
                '4 Enrico Point\nAngelitaville, TAS 1301',
                '856A Vandervort Gap\nEast Kiarrachester, TAS 2988',
                'Suite 739 1 Renner Extension\nKilbackhaven, NSW 2326',
                '82 Noelia Interchange\nShanyburgh, VIC 2747',
                '2 Braeden Colonnade\nKeeleyfort, VIC 2668',
                'Unit 04 8 Simonis Port\nSchustertown, WA 2619',
                '867 Schoen Underpass\nSimport, SA 0215',
                '81B Crist End\nPort Wavaburgh, WA 2927',
                '0 Maggio Tarn\nEast Norbert, ACT 5612',
                '38C Beatty Trailer\nLaurianneton, ACT 2934',
                'Flat 93 3 Estella Courtyard\nWillardshire, SA 2989',
                '68D Boehm Dale\nHermistonside, VIC 2657',
                '04 / 479 King Green\nMacejkovicchester, ACT 2613',
                '290D Samantha Road\nHayeston, NSW 2920',
                '684C Klein Siding\nEast Veronicaville, QLD 2933',
                '99B Angelita Road\nLake Ethelville, WA 2908',
                '4 Fritsch Upper\nWest Eric, QLD 0818',
                'Apt. 520 866 Little Cross\nSouth Ianland, VIC 2972',
                '755 Victoria Freeway\nNorth Hilmaborough, NSW 2669',
                '718C Heller Distributor\nPort Morganbury, ACT 2952',
                'Apt. 453 9 Bradtke Landing\nLake Dillanside, SA 2967',
                '1 Raynor Broadway\nFreemanville, TAS 2604',
                'Suite 784 5 Ortiz Plaza\nLake Jerrodfort, NT 2967',
                '600 Schiller Siding\nFeestbury, ACT 2928',
                'Suite 541 170 Marks Ridgeway\nSouth Remington, WA 2963',
                'Suite 229 707 Kreiger Avenue\nWest Bonniebury, TAS 1589',
                'Suite 551 41 Ruben Pathway\nSt. Maceyburgh, SA 2905',
                '37 / 08 Alexandria Route\nCruzfort, QLD 2837',
                '6 Sincere Gap\nEast Earnestineburgh, ACT 2920',
                'Apt. 130 18 Kadin Strip\nGoldnertown, NSW 2796',
                'Suite 220 198 Domenic Crescent\nPort Keshawnport, NSW 4559',
                'Flat 75 956 Henri Strip\nSt. Hellenview, ACT 2678',
                '0 / 985 Oswald Cutting\nReillyfort, QLD 2908',
                '8 Torrance Upper\nStreichville, QLD 2996',
                '139 Christy Vale\nStiedemannshire, TAS 2977',
                '509D Brad Trailer\nCortneyside, ACT 2647',
                'Suite 003 860 Dibbert Bridge\nLake Santos, SA 2641',
                '708 Cormier Retreat\nPort Chad, ACT 2607',
                '17 Wunsch Mews\nPort Krisfurt, NT 2902',
                '76D Collier Path\nMaynardville, ACT 2135',
                'Flat 85 4 Urban Beach\nNorth Kendraton, VIC 2464',
                '7A Dwight Ring\nWest Noble, QLD 4821',
                'Suite 832 92 Greenfelder Row\nSouth Rustyside, SA 2988',
                'Flat 57 83 Padberg Broadway\nSouth Rhodaborough, ACT 2955',
                '22 / 097 Ashlynn Gates\nNorth Syblefort, VIC 2864',
                '0 Camron Footway\nWest Modesto, QLD 2930',
                '81A Clement Extension\nKaseystad, QLD 2807',
                '845 Wallace Little\nLake Melba, VIC 2954',
                '06B Tianna Promenade\nWiegandhaven, TAS 2643',
                '362 Langosh Little\nGleichnerburgh, NT 2979',
                '34 Dallas Avenue\nVivastad, SA 2973',
                '98C Bernier Cutting\nTeaganside, TAS 2699',
                '228 Wuckert Mew\nNew Juwanville, NT 2916',
                '47 / 507 Dicki Dip\nPort Stantonport, VIC 2927',
                '83 / 724 Osvaldo Walk\nOnahaven, ACT 2693',
                '19 / 898 Emerson Boulevard\nEast Hope, NSW 2307',
                '09 Viviane Parklands\nLetitialand, WA 2791',
                '8C Eliane Line\nWildermanfort, WA 1764',
                '424D Nikki Basin\nLake Carolchester, QLD 5803',
                '769 Lynch Retreat\nLindgrenton, VIC 2955',
                '12A Jacques Glade\nEast Annieborough, QLD 2931',
                '087D Walter Crossroad\nSt. Laurianeland, NT 2982',
                'Unit 82 13 Runte Extension\nPort Juwanchester, WA 2186',
                '7D Pfeffer Frontage\nReynoldsfort, QLD 2453',
                '73A Parker Anchorage\nNew Velva, QLD 2695',
                '56B Windler Grange\nAlbertamouth, QLD 1796',
                '663A Brionna Nook\nEast Donaldport, NT 2666',
                'Apt. 039 003 Winifred Meander\nIrvingbury, NT 2244',
                '613B Cormier River\nNorth Beth, SA 2993',
                '2 / 6 Moore Roadside\nSt. Brandi, NT 2957',
                '357 Haley Little\nPort Dayna, QLD 2687',
                '576D Considine Beach\nSouth Blanchefurt, WA 8546',
                '59 Klocko Cove\nJacintheburgh, VIC 0898',
                'Flat 69 8 Abernathy Crossing\nLeolaborough, TAS 2934',
                '15 Jakayla Outlook\nWest Retachester, QLD 1888',
                '8 / 22 Jackeline Mews\nKrisview, TAS 2568',
                '89 Wyatt Courtyard\nElenastad, WA 8096',
                '139 Welch Green\nSouth Connor, NSW 3064',
                '8 Kaylie Access\nSouth Reginald, WA 2653',
                '85 / 06 Howe Crescent\nEast Shane, WA 2200',
                '5 / 56 Kuhlman Viaduct\nJaidenbury, NSW 2968',
                '913 Rodrigo Byway\nLake Laverne, ACT 2769',
                '83D Little Outlook\nLeoton, SA 4807',
                '6 / 346 Purdy Walkway\nFraneckiside, ACT 2626',
                'Level 0 24 Schmitt Right Of Way\nHyattmouth, SA 2276',
                '7C Terry Meander\nNew Coltonhaven, NSW 5482',
                '566 Stracke Grove\nNorth Garfieldmouth, NSW 2643',
                '783 / 6 Bartell Walk\nBoganville, SA 2942',
                '9 Greyson Green\nWest Ashleeview, QLD 6795',
                '3A Rudolph Parade\nVerdieberg, NT 7502',
                '6 / 505 Sage Roadside\nNorth Eliza, SA 2688',
                '369C Vickie Link\nSouth Demarcusville, QLD 0862',
                '4C Jazlyn Right Of Way\nEast Kaycee, WA 2684',
                '096 Genoveva Ridge\nPort Jeffery, WA 2878',
                'Flat 79 0 Gunner Estate\nAlexieport, NT 2589',
                '64D Archibald Close\nNorth Mabelleview, ACT 2109',
                '6D Dejah Bridge\nNew Christelle, WA 2698',
                '75D Connelly Stairs\nMannton, QLD 2052',
                '64 Sarai Driveway\nKreigerchester, WA 2623',
                '230A Nedra Ramp\nSwiftborough, QLD 2619',
                '9 Deckow Line\nPort Julianside, ACT 0897',
                'Flat 96 0 Ottilie Amble\nKeyshawnmouth, QLD 0825',
                '2 Verner Edge\nEldorashire, ACT 2987',
                'Level 3 7 Kautzer Gully\nPort Trentonport, TAS 3873',
                '2 Madison Beach\nEast Hymanhaven, VIC 2723',
                '55 Stiedemann Walkway\nArnoldoview, NSW 2661',
                '30A Dietrich Drive\nSt. Khalidside, TAS 8581',
                '455D Dejuan Towers\nLilychester, SA 2965',
                '6 / 0 Isabelle Centreway\nSouth Toy, SA 2999',
                '13 Shaun Riverway\nNew Tremaineshire, WA 4295',
                'Suite 932 8 Abelardo Tarn\nSouth Frank, VIC 4171',
                '30B Marquardt Loop\nBarbaramouth, NT 0283',
                '467 Dario Centreway\nKilbacktown, WA 2611',
                '48 William Distributor\nSt. Aliyatown, WA 2473',
                '3C Eldridge Bend\nMackenziemouth, ACT 8074',
                '06C Cecelia Walkway\nEast Darwin, TAS 2340',
                '3C Enola Parklands\nSouth Ima, NT 2649',
                '45 Macie Garden\nKuhicside, QLD 2677',
                'Level 3 5 Zora Approach\nMarielleville, NT 2689',
                'Flat 09 495 Stracke Villas\nNorth Allenville, ACT 2692',
                '93 / 0 Grady Gate\nSchneiderport, NSW 2627',
                '1B Pouros Retreat\nEast Millerchester, WA 2029',
                '10A Dimitri Circuit\nRippinside, TAS 2927',
                'Unit 67 856 Boehm Dale\nFrankieborough, SA 2215',
                'Suite 377 4 Kayden Copse\nNew Emilio, WA 2615',
                '86 Donald Ring\nNew Mitchell, TAS 2963',
                '71A Borer Trailer\nHollieport, NT 2642',
                'Level 6 994 Tressie Ride\nNew Maiya, VIC 2991',
                '41 Ethelyn Dale\nJennyferburgh, ACT 2070',
                '7 Bartell Mall\nSouth Elza, NT 2923',
                '31C Swift Colonnade\nNew Aryannaside, NSW 9115',
                'Suite 258 2 Yundt Park\nPaucekton, NSW 2618',
                'Flat 81 626 Randy Distributor\nPort Tomasashire, QLD 2880',
                '258 Rempel Upper\nMarshallfort, VIC 2252',
                '50D Ruth Sound\nWest Jadynland, TAS 2619',
                '691D Lyla Port\nRobynfurt, TAS 2638',
                'Suite 368 7 Kenneth Little\nBeerchester, ACT 7318',
                'Unit 88 497 D\'Amore Causeway\nFeilside, NT 2652',
                '02 Wiegand Point\nLinwoodburgh, NSW 2920',
                '850 / 65 Evan Corso',
                'St. Brainhaven, NSW 2665',
                '405 Jensen Foreshore\nSt. Brandi, VIC 2672',
                '2A Pfannerstill Parade\nGerlachhaven, QLD 2671',
                '476 Dietrich Ramble\nJalenland, QLD 2611',
                '76B Maggio Flat\nSouth Zula, NSW 1920',
                '70B Johan Trunkway\nBustertown, WA 2679',
                '71C Kunze Reserve\nPort Terrence, SA 2614',
                '2 / 5 Rowe Ridge\nJessyshire, ACT 2942',
                '271 Palma Esplanade\nKayleeland, SA 2029',
                'Apt. 650 03 Luther Broadway\nSouth Adrain, TAS 8295',
                '048B Robert Artery\nBellachester, NSW 2982',
                '41 / 148 Americo Gate\nNew Dahlia, QLD 2673',
                '8C Orn Route\nPort Alvahville, SA 2628',
                'Suite 553 58 Cale Riverway\nAlphonsomouth, ACT 2651',
                'Unit 12 38 Batz Block\nLake Lamont, WA 2976',
                '34C Dariana Amble\nPort Nat, ACT 2155',
                '5 Marie Chase\nCarloland, ACT 2631',
                'Apt. 582 308 Dooley Viaduct\nCeciletown, WA 2686',
                '96D Labadie Break\nEast Buddy, TAS 2204',
                'Apt. 581 34 Erika Block\nKristoferchester, SA 0238',
                'Flat 48 087 Cristopher Quadrangle\nMarinastad, WA 2626',
                'Unit 57 4 Donnelly End\nSt. Eldred, WA 2992',
                'Apt. 288 4 Thora Heights\nLake Janelle, SA 2934',
                '41A Malachi Gardens\nKaylaview, NT 2626',
                '95A Alexis Crossroad\nAshtynbury, TAS 2920',
                'Suite 845 3 Gottlieb Range\nNew Hilda, WA 2924',
                '7C McCullough Trail\nSt. Rosemaryhaven, VIC 2689',
                '9D Zulauf Beach\nPort Antoniofort, NT 2647',
                '673B Cummings Heights\nLake Claudietown, QLD 2693',
                '43B Charlie Square\nEast Reece, QLD 2691',
                '354D Florida Round\nAlishashire, SA 8851',
                '73 Willow Tarn\nSt. Kasandra, NSW 0293',
                '28 Goodwin Pass\nCamylleview, VIC 2942',
                'Apt. 802 38 Russel Link\nSouth Bradenstad, TAS 2688',
                '5 Brionna Gully\nWest Halle, NT 2982',
                'Suite 106 08 Ettie Mew\nKatelynbury, NSW 0998',
                'Suite 383 770 Myles Top\nEast Timmyberg, WA 1856',
                '01 / 6 Medhurst Ridgeway\nNorth Zion, NSW 2886',
                '8A Mable Basin\nEast Delta, NT 5175',
                'Suite 995 76 Predovic Road\nHuelmouth, WA 2612',
                '4 / 335 Dewayne Bypass\nFordshire, TAS 2616',
                '4 Rogahn Place\nLake Jaden, SA 2018',
                '6 Stanton Plateau\nPort George, VIC 2619',
                '270A Adams Trunkway\nWest Yeseniaberg, ACT 2623',
                '936 Senger Interchange\nBoscobury, NT 5002',
                '70C Abdul Turn\nSouth Harrison, VIC 3122',
                '92 D\'Amore Ramp\nWilhelmineburgh, QLD 8488',
                '384 Sebastian Roadside\nOndrickaborough, SA 2669',
                'Suite 883 55 Kiehn Bridge\nPouroschester, NSW 6497',
                '915D Everette Crescent\nJacobsonside, NT 2632'
        };

        return addresses;
    }

    public static List<String> getFakePhoneNumbers()
    {
        List<String> numbers = new List<String>
        {
                '0491570006',
                '0491570156',
                '0491570157',
                '0491570158',
                '0491570159',
                '0491570110',
                '0491570313',
                '0491570737',
                '0491571266',
                '0491571491',
                '0491571804',
                '0491572549',
                '0491572665',
                '0491572983',
                '0491573770',
                '0491573087',
                '0491574118',
                '0491574632',
                '0491575254',
                '0491575789',
                '0491576398',
                '0491576801',
                '0491577426',
                '0491577644',
                '0491578957',
                '0491578148',
                '0491578888',
                '0491579212',
                '0491579760',
                '0491579455'
        };
        return numbers;
    }
}
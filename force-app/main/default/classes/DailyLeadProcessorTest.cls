@isTest
public class DailyLeadProcessorTest {

    @testSetup static void insertLead(){
        List<Lead> ls=new List<Lead>();
        for(Integer i=1;i<201;i++){
            Lead leadd=new Lead(LastName='George'+i,Company='HCL',Status='Open - Not Contacted',LeadSource='');
            ls.add(leadd);
            
        }
        insert ls;
    }
    
    @isTest static void TestLead(){
        String CronExp='0 0 0 15 3 ? 2022';
        Test.startTest();
        System.schedule('Leadcheck', CronExp, new DailyLeadProcessor());
       
        
        Test.stopTest();
        
     
    }
}
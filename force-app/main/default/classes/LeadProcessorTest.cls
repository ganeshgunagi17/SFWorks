@isTest
public class LeadProcessorTest {

    @isTest static void TestLead(){
        List<Lead> lst=new List<Lead>();
        for(Integer i=1;i<=200;i++){
            Lead lc=new Lead(LastName='Ganesh'+i,Company='TechM'+i,Status='Working - Contacted');
            lst.add(lc);
        }
        insert lst;
        
        Test.startTest();
        LeadProcessor lcc=new LeadProcessor();
        Id leadBatch=Database.executeBatch(lcc,200);
        Test.stopTest();
        
        
    }
    
}
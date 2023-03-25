@isTest
public class TestApexTrigger {

    @isTest static void TestTrigger(){
        Account acc=new Account(Name='Mindtree Rural');
        insert acc;
        
        Opportunity opp=new Opportunity(Name=acc.Name+' Opportunity',StageName='Prospecting',CloseDate=System.today().addDays(1));
        insert opp;
        
        Test.startTest();
        	Database.DeleteResult result=Database.delete(acc, false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        
    }
}
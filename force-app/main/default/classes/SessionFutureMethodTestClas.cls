@isTest
public class SessionFutureMethodTestClas {
	
    @isTest public static void TestFuture(){
        List<Session__c> lsession=new List<Session__c>();
        List<Id> ids=new List<Id>();
        for(Integer i=1;i<=10;i++){
            Session__c session=new Session__c(Name='RPA'+i);
            lsession.add(session);
            ids.add(session.Id);
        }
        insert lsession;
        
        Test.startTest();
        SessionFutureMethod.myFutureMethod(ids);
        Test.stopTest();
        
        
        
        
        
    }
}
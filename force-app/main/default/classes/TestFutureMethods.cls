@isTest
public class TestFutureMethods {

    @isTest
    public static void TestFuture(){
        Test.startTest();
        futureMethod.futureTest();
        Test.stopTest();
        
        List<Speaker__c> lsp=[select Id,FirstName__c from Speaker__c where FirstName__c like '%Ganesh%'];
        System.debug('Values:'+lsp);
    }
}
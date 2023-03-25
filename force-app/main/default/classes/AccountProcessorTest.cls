@isTest
public class AccountProcessorTest {

    @isTest static void TestFutureMethod(){
        
        Account a=new Account(name='Anita');
        insert a;
        
        Contact con=new Contact(FirstName='GaneshGunagi',LastName='Anitha',AccountId=a.Id);
        insert con;
        
        List<Id> idss=new List<Id>();
        idss.add(a.Id);
        Test.startTest();
        AccountProcessor.countContacts(idss);
        Test.stopTest();
    }
}
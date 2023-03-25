public with sharing class AccountTest {
    
    public static void insertacc(){
        Account acc = new Account();
        acc.Name = 'test';
        acc.SLAExpirationDate__c = System.today();
        acc.SLASerialNumber__c ='123';
      acc.Fax ='23232';
        insert acc;
    }

}
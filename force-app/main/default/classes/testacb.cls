public with sharing class testacb {
 
    public static void runAccount(String id){
        Account acc = new account();
        acc = [select Id, Active__c from account where Id = :id];
        if(acc.Active__c == 'Yes'){
            acc.Active__c = 'No';
        }else {
            acc.Active__c = 'Yes';
        }
        update acc;
    }
}
public with sharing class FetchRelatedContacts {
  
    @AuraEnabled
    public static List<Contact> getContacts(){
      return [select Id,FirstName,Lastname from contact limit 20];
    }
}
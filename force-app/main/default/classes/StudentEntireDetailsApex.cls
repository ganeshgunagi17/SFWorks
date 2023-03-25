public class StudentEntireDetailsApex {

    @AuraEnabled
    public static String handleSaveRecord(String Id, Decimal num){
        
        College__c col = new College__c();
        col = [select Id,Mobile__c from College__c where Id = :Id];
        col.Mobile__c = num;
        update col;
        return col.Id;
    }
}
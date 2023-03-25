public class fetchAppContacts {

    @AuraEnabled
    public static List<Contact> getContacts(String accountnum){
        return [select Id,Firstname,Lastname from Contact where Account.AccountNumber = :accountnum];
    }
}
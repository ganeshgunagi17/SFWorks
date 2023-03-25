public class FetchContactsController {

    @AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> cont = new List<Contact>();
        cont = [select Id,FirstName,LastName from Contact limit 10];
        return cont;
    }
}
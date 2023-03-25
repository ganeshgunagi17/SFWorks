public class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String str){
        List<List<sObject>> sleadCont=[Find :str IN ALL FIELDS returning Contact(FirstName,LastName),Lead(LastName)];
        return sleadCont;
    }
}
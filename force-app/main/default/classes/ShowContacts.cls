public class ShowContacts {
    public List<Contact> ContactList{get;set;}
    public ShowContacts(){
        Id id=apexpages.currentPage().getParameters().get('id');
        ContactList=[select Id,name from contact where AccountID=:id];
    }
   
}
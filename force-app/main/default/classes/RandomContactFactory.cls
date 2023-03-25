public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numberOfContacts,String contactLastName){
        List<Contact> listCon=new List<Contact>();
        for(Integer i=0;i<numberOfContacts;i++){
            Contact cont=new Contact(FirstName='Test '+i,LastName=contactLastName);
            listCon.add(cont);
        }
        return listCon;
    }
}
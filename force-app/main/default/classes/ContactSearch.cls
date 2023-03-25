public class ContactSearch {
    public static List<Contact> searchForContacts(String a,String b){
        List<Contact> contactLastname=[select ID,LastName,MailingPostalCode from contact where (LastName=:a and MailingPostalCode=:b) ];
      
      //  List<String> ak1=new List<String>();
      List<Contact> c2=new List<contact>();
        for(Contact c1:contactLastname){
        		System.debug('details');
          c2.add(c1);
          
        }
        return c2;
       
        
    }
}
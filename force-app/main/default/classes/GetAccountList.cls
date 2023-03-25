public class GetAccountList {

public List<Contact> conta;

public List<Contact> getContacts(){
 conta=[select Name,Phone from Contact limit 10];
return conta;
}

}
public class InsertingRelatedRecords {
    public InsertingRelatedRecords(){
         Account a=new Account(Name='Capgemini Healthcare');
    insert a;
    Id acid=a.Id;
    Contact c=new Contact(Email='capgemini@gme.com',Lastname='Gunagi76');
    c.AccountId=acid;
    insert c;
    
    }
   
}
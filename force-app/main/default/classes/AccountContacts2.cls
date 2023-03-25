public class AccountContacts2 {
    public List<Account> AccountList{get;set;}
    public String GetData{get;set;}
    public AccountContacts2(){
        AccountList=[select Name,Industry,Rating,(select LastName,Phone,Department from Contacts) from Account];
    }
    public void ShowData(){
       
        AccountList=[select Name,Industry,Rating,(select LastName,Phone,Department from Contacts) 
                     from Account where Name Like:'%'+GetData+'%'];
        System.debug('Accounts'+AccountList);
        
    }
}
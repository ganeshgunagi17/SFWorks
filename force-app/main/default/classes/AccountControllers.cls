public class AccountControllers {
    public String AccountName{get;set;}
    public  List<Account> listAcco{get;set;}
    public void SearchAccounts(){
      
        listAcco=[select Name,Industry,Rating from Account where Name=:AccountName];
       
    }
}
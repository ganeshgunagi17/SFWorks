public class ExtensionController1 {
Account account;
    public ExtensionController1(ApexPages.StandardController std){
        
    }
    public List<Account> getList(){
        List<Account> ls=new List<Account>();
        ls=[select Id,Name from account];
        return ls;
        
    }
    
    public PageReference save(){
        PageReference pg=new ApexPages.StandardController(account).view();
        pg.setRedirect(true);
        return pg;
    }
}
public class ExtensionAccount {
    public List<Account> lst{get;set;}
    public ExtensionAccount(ApexPages.StandardController Acc){
        lst=[select name ,id,type,industry from account limit 10];
        
    }
}
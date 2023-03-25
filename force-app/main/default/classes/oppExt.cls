public class oppExt {
    public oppExt(ApexPages.StandardController con){
        
    }
    List<Account> acc=[select name,type,industry,phone from account where type='Customer - Channel'];
    public List<Account> getacc(){
        return acc;
    }
}
public class PageReferenceAccounts {
List<Account> act=new List<Account>();
    public List<Account> getact(){
       return act;
    }
    public PageReference channelAccts(){
        act=[select name,type,industry,phone from Account where type='Customer - Channel'];
        return null;
    }
    
    public PageReference directAccts(){
        act=[select name,type,industry,phone from Account where type='Customer - Direct'];
        
        return null;
    }
    
}
public class controllerExtensions {

    public Account acct;
    
    public controllerExtensions(ApexPages.StandardController standardCont){
        this.acct=(Account)standardCont.getRecord();
    }
    
    public String getGreeting(){
        return 'Hello '+acct.Name+' id is '+acct.Id;
    }
}
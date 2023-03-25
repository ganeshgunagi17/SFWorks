public class AccountUpdateController {
    public Account account{get;set;}
    
    public AccountUpdateController(){
        account=[select Id,name,site from 
                 Account where Id=:Apexpages.currentPage().getParameters().get('id')];
         
    }
    
    public PageReference save(){
       // PageReference redirectSuccess = new ApexPages.StandardController(Account).view();

        //return (redirectSuccess);

        PageReference redirectOnSave=new ApexPages.StandardController(Account).view();
        return redirectOnSave;
    }
}
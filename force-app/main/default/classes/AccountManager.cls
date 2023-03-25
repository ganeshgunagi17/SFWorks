@RestResource(urlMapping='/Accounts/*/Contacts')
global class AccountManager {

    @HttpGet
    global static List<Account> getAccount(){
        RestRequest request=RestContext.request;
        String AccountID=request.requestURI.subStringBetween('Accounts/','/contacts');
       List<Account> acc=[select Id,Name,(select Id,Name from contacts) from Account where Id=:AccountID];
        return acc;
    }
}
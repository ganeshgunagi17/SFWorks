@RestResource(urlMapping='/Acc/*')
global with sharing class AccountClass {
    
    @HttpGet
    global static Account AccountName(){
        
        RestRequest req=RestContext.request; //this is to fetch the id from the REST request
        
        String accid=req.requestURI.subString(req.requestURI.LastIndexOf('/')+1); //this will find the last index of '/' +1 and return the content
        //here it will give the ID from the uri
        
        Account accDetails=[select ID,Name,Industry from Account where Id=:accid];
        
        return accDetails;
        
    }

}
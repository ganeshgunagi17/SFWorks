@RestResource(urlmapping='/AccountCase/*')
global with sharing class RestController {
@HttpGet
    global static Account getAccountName(){
        String accname=RestContext.request.params.get('acname');
        Account acc=[select id,name,phone,type from account where name=:accname];
        return acc;
    }
}
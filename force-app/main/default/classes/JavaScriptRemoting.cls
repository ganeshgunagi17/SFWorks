global with sharing class JavaScriptRemoting {
    public String accname{get;set;}
    public JavaScriptRemoting(){
        
    }
    @RemoteAction
    global static Account JRemote(String accname){
        Account acc=[select name,id,type,industry from Account where name=:accname];
        return acc;
    }
}
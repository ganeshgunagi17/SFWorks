public class DynamicSOQL {


    public void Dynamic(){
            String name1='Birlasoft';
String dynSQL='select id,name,industry from Account where name=:name1';     
    List<Account> ls=Database.query(dynSQL);
    for(Account lst:ls){
        System.debug('Value is:'+lst.name);
    }   
    }
}
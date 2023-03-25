public class DynamicApexClass {
    public String inputnumber{get;set;}
    public List<Account> listOfAccounts{get;set;}
    public String varQuery{get;set;}
    
    public DynamicApexClass(){
        varQuery='Select ';
        List<schema.FieldSetMember> varSet=sObjectType.Account.FieldSets.MyFieldSet.getfields();
        for(schema.FieldSetMember var:varSet){
            varQuery=varQuery+var.getFieldPath()+',';
            //o/p: select Name,Industry,Rating,
        }
        varQuery=varQuery.removeEnd(',');
        //o/p: select Name,Industry,Rating 
        varQuery=varQuery+' From Account';
        listofAccounts=Database.query(varQuery);
        
        
    }
    public void Submit(){
        varQuery='Select ';
        List<schema.FieldSetMember> varSet=sObjectType.Account.FieldSets.MyFieldSet.getfields();
        for(schema.FieldSetMember var:varSet){
            varQuery=varQuery+var.getFieldPath()+',';
            //o/p: select Name,Industry,Rating,
        }
        varQuery=varQuery.removeEnd(',');
        //o/p: select Name,Industry,Rating 
        varQuery=varQuery+' From Account where Name like \'%'+inputnumber+'%\'';
        listofAccounts=Database.query(varQuery); 
    }
}
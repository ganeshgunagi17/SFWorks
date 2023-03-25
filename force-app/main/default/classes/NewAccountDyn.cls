public class NewAccountDyn {
    public List<Account> AccountList{get;set;}
    public String var{get;set;}
    public NewAccountDyn(){
        var='Select ';
        List<schema.FieldSetMember> fields=sObjectType.Account.FieldSets.AccountFieldSet.getFields();
        for(schema.FieldSetMember varSet:fields){
            var=var+varSet.getFieldPath()+',';
            //o/P: select Name,Rating,Industry,
        }var=var.removeEnd(',');
        //o/p: select name,rating,industry
        var=var+' From Account';
            AccountList=DataBase.query(var);
    }
}
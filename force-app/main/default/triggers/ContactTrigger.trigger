trigger ContactTrigger on Contact (after insert,after delete,after undelete) {

    Set<Id> accountIds =  new Set<Id>();
    List<Account> accountsToUpdateList = new List<Account>();

    if(Trigger.isInsert || Trigger.isUndelete){
        for(Contact cont : Trigger.new){
            accountIds.add(cont.AccountId);
        }
    }else if(Trigger.isDelete){
        for(Contact cont1 : Trigger.old){
            accountIds.add(cont1.AccountId);
        }
    }
    List<Account> accList = [select Id,(select Id from Contacts) from Account where Id IN :accountIds];
        for(Account acc : accList){
            accountsToUpdateList.add(new Account(Id=acc.Id,Number_of_Contacts__c=acc.Contacts.size()));
        } 
       
    if(accountsToUpdateList.size()>0){
        update accountsToUpdateList;
    }
}
trigger AvoidingExtraContactss on Contact (before insert) {

    Set<Id> accountIds = new Set<Id>();
    Map<Id,List<Contact>> accMap = new Map<Id,List<Contact>>();
    for(Contact cont : Trigger.new){
        accountIds.add(cont.AccountId);
    }
    List<Account> accountList = [select Id ,(select Id from Contacts) from Account where Id IN :accountIds];
    for(Account acc : accountList){
        accMap.put(acc.Id,acc.Contacts);
    }
    for(Contact cont:Trigger.new){
        if(accMap.containsKey(cont.AccountId) && accMap.get(cont.AccountId).size()==2){
            cont.addError('cannot insert more then 2 contacts for same account');
        }
    }
    
}
trigger AccountContactUpdate on Account (before update) {

    Map<Id,String> accountIdSet = new Map<Id,String>();
    for(Account acc : Trigger.old){//this is to pick old account record details eg: phone = 123
        System.debug('map values for account'+Trigger.newMap); 
        if(acc.Phone <> Trigger.newMap.get(acc.Id).Phone){//phone : 345
            String phoneStr = Trigger.newMap.get(acc.Id).Phone;
            system.debug('at line 7');
            accountIdSet.put(acc.ID,phoneStr);
        }
    }
    List<Contact> contList = new List<Contact>();
    List<Contact> contListToUpdate = new List<Contact>();
    contList = [select Id,Phone,AccountID from Contact where AccountId IN :accountIdSet.keySet()];
    for(Contact conts : contList){
        if(accountIdSet.containsKey(conts.AccountId)){
            system.debug('at line 16');
            Contact cont =new Contact();
            cont.Id = conts.ID;
           
            cont.Phone = accountIdSet.get(conts.AccountID);
            contListToUpdate.add(cont);
        }
    }
    if(contListToUpdate.size()>0)
    update contListToUpdate;
}
trigger AccountContactDeletion on Account (before delete) {
    /*
    Set<Id> accIdSet = new Set<Id>();
    for(Account acc : Trigger.old){
        accIdSet.add(acc.ID);//set will store all account ids just before deletion of account records, so that we can use
        //same accountids to query related contacts;
    }
    List<Contact> contList = new List<Contact>();
    contList = [select Id from Contact where AccountId IN :accIdSet ];
    if(contList.size()>0){
        
    }
    delete contList;*/
}
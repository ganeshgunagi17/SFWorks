trigger AccountTrigger2 on Account (before insert,after insert) {
    if(Trigger.isInsert && Trigger.isBefore){
        for(Account acc:Trigger.new){
            List<Account> acc1=[select id,Name from Account where Name=:acc.Name];
        System.debug('before ID:'+acc1);
        }
        
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
        for(Account acc:Trigger.new){
            List<Account> acc1=[select id,Name from Account where Id=:acc.id];
        System.debug('before ID:'+acc1);
        }
        
    }
}
trigger AccountBeforeTrigger on Account (before insert,before delete) {
    if(Trigger.isBefore){
        System.debug('Trigger has triggered for Before');
        if(Trigger.isDelete){
            for(Account a:Trigger.old){
                if(a.Name=='Ganesh')
                {
                    a.name.addError('Cannot delete the account with name Ganesh'+a.ID);
                }
            }
        }
        
       
    }
    
}
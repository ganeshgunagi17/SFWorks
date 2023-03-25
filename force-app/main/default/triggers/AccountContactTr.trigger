trigger AccountContactTr on Contact (before update) {
    
if(Trigger.isUpdate){
system.debug('contact flag check'+AccountTriggerHandler.flagcheck);
}
}
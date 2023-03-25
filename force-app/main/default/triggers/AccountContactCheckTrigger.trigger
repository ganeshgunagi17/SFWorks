trigger AccountContactCheckTrigger on Account (before update) {

    if(Trigger.isUpdate){
        new AccountTriggerHandler().futureMethod(Trigger.new);
        System.debug('flag check'+AccountTriggerHandler.flagcheck);
        Contact cont = [select Id from contact limit 1];
        update cont;
    }
   
   
}
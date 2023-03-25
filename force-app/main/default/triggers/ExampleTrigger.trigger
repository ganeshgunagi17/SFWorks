trigger ExampleTrigger on Contact (after insert,after update) {
    if(Trigger.isInsert){
        Integer newrecord=Trigger.New.size();
        EmailManager.sendMail('gnshgunagi@gmail.com', 'subjec',newrecord+ 'body');
        }else if(Trigger.isDelete){
            Integer deleted=Trigger.New.size();
        System.debug('deleted successfully='+deleted);
            
    }
}
trigger AccountTriggerPhone on Account (before insert,before update) {
    for(Account actphone:Trigger.new){
        If(actphone.Phone==null){
            actphone.phone.addError('Phone number is a mandatory field');
        }
    }
}
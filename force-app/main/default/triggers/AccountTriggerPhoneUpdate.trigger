trigger AccountTriggerPhoneUpdate on Account (before insert) {
for(Account actphone:Trigger.new){
        If(actphone.Phone==null){
            actphone.phone='8722578937';
        }
}
}
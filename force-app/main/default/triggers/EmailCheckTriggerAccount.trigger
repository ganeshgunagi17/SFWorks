trigger EmailCheckTriggerAccount on Account (before insert) {

    Set<String> emailString = new Set<String>();
    Map<String,Account> mapString = new Map<String,Account>();
    for(Account accTrigger : Trigger.new){
        emailString.add(accTrigger.Name);
    }
    List<Account> accList =[select Id,Name from Account where Name IN:emailString];
    for(Account acc : accList){
        mapString.put(acc.NAme,acc);
    }
    for(Account acc :Trigger.new){
        if(mapString.containsKey(acc.Name)){
            acc.addError('cannot insert this as it already exist');
        }
    }
    
}
trigger DuplicateAccountCheck on Account (before insert,after insert) {

    if(Trigger.isInsert && Trigger.isBefore){
        Set<String> accountName = new Set<String>();
    for(Account acc : Trigger.new){
       accountName.add(acc.Name);
    }
    if(accountName.size()>0){
        List<Account> accList = [select Id,Name from Account where Name IN :accountName]; 
    
    Map<String,Account> accListString = new Map<String,Account>();
    for(Account acc1 : accList){
        accListString.put(acc1.Name,acc1);
    }
    for(Account acc: Trigger.new){
        if(accListString.containsKey(acc.Name)){
            acc.addError('cannot insert duplicate records');
        }
    }
    }
    
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
        List<Account> accListAfterInsert = new List<Account>();
        for(Account acc : Trigger.new){
            Account acc1 = new Account(Id=acc.Id,Name='Deliver-'+acc.Name);
            accListAfterInsert.add(acc1);
        }
        update accListAfterInsert;
    }
    }
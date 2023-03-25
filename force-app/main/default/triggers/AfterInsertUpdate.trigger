trigger AfterInsertUpdate on Account (after insert,after update,after delete) {
/*
    if(Trigger.isInsert){
        	    List<Account> accList = new List<ACcount>();
    for(Account acc : Trigger.new){
        if(acc.Name=='test'){
            Account acc1 = [select Id, Name from Account where Id = :acc.ID];
            accList.add(acc1);
            	update accList;
        }
         
    	}
    }
    
    if(Trigger.isUpdate){
      System.debug('older version'+trigger.old);
        System.debug('new version'+trigger.new);
    }
    
    if(Trigger.isDelete){
        System.debug('older version'+Trigger.old);
        System.debug('new version'+Trigger.new);
    }

*/
   
}
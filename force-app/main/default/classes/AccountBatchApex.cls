global class AccountBatchApex implements Database.Batchable<sObject>,Database.Stateful {
    global Integer recordsCount=0;
    global Database.QueryLocator start (Database.BatchableContext Bc){
        
        return Database.getQueryLocator('select Id,Name from Account limit 1000');
    }
    
    global void execute(Database.BatchableContext Bc,List<Account> sc){
        List<Account> addAcc=new List<Account>();
        for(Account ac:sc){
				ac.Name=ac.Name+' batch';
addAcc.add(ac);       
            recordsCount=recordsCount+1;
        }
        update addAcc;
    }
    global void finish(Database.BatchableContext Bc){
        Messaging.SingleEmailMessage mail =new Messaging.SingleEmailMessage();
        String[] toAddress=new String[]{'gnshgunagi@gmail.com'};
            mail.setToAddresses(toAddress);
        mail.setSubject('Hello ,please find the batch results');
        mail.setPlainTextBody('HEYDLAFKLK');
        Messaging.sendEmail((new Messaging.SingleEmailMessage[] { mail }));
                            }
}
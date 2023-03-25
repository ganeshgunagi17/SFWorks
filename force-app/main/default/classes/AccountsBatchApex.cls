global class AccountsBatchApex implements Database.Batchable<sObject>{
global String queryBatch;
global List<Account> lisac=new List<Account>();
    global Database.QueryLocator start(Database.BatchableContext bc){
    
    return Database.getQueryLocator(queryBatch);
    }

global void execute(Database.BatchableContext bc,List<Account> scope){

for(Account ac:scope){

System.debug(ac.ID+' '+ac.Name);
lisac.add(ac);
}
}


global void finish(Database.BatchableContext bc){

Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
message.toAddresses = new String[] { 'gnshgunagi@gmail.com', 'gnshgunagi@gmail.com' };
message.optOutPolicy = 'FILTER';
message.subject = 'Subject Test Message'+lisac;
message.plainTextBody = 'This is the message body.';
Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);

if (results[0].success) {
    System.debug('The email was sent successfully.');
} else {
    System.debug('The email failed to send: ' + results[0].errors[0].message);
}
}


}
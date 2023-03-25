trigger CarTriggerEmail on Showroom_Pricing__c (after insert,after update) {
    List<Messaging.SingleEmailMessage> mails=
        new List<Messaging.SingleEmailMessage>();
    if(trigger.isInsert){
        for(Showroom_Pricing__c sprice:Trigger.new){
            Showroom_Pricing__c smail=[select Customer_Email__c from Showroom_Pricing__c where Id=:Trigger.new];
Messaging.SingleEmailMessage sm=new Messaging.SingleEmailMessage();
            List<String> slist=new List<String>();
            slist.add(smail.Customer_Email__c);
            sm.setToAddresses(slist);
            sm.setSubject('Hello '+smail.Customer_Email__c+' your booking is successful');
            sm.setPlainTextBody('Hello Booking is successful!! Enjoy the ride');
            mails.add(sm);
            Messaging.sendEmail(mails);
            
        }
    }
}
trigger RPaSessionTrigger on Session__c (after insert) {
    for(Session__c session:Trigger.new){
        Session__c sess=[select id,Name from Session__c where Name=:session.Name ];
        if(sess.Name=='RPAA'){
            Speaker__c sp=new Speaker__c(FirstName__c='Nanda');
            insert sp;
        }
    }
}
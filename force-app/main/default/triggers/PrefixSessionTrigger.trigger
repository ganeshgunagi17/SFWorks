trigger PrefixSessionTrigger on Session__c (before insert) {
    
    List<Session__c> listsession=new List<Session__c>();
    for(Session__c sess:Trigger.new){
        System.debug('Valeu is:'+sess.Name);
        sess.Name='M/s-'+sess.Name;
        
        listsession.add(sess);
        
       
         System.debug('value latest:'+sess.Name);
    }
    
   
    
}
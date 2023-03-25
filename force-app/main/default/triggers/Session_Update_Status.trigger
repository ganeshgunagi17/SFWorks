trigger Session_Update_Status on Session__c (before update) {
    
   
    for(Session__c session:Trigger.old){
      
        
        if(session.status__c=='Worse'){
            session.addError('you cannot change the worse field picklist value');
        }
    }
}
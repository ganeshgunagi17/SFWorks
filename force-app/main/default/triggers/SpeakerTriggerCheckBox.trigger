trigger SpeakerTriggerCheckBox on Speaker__c (before insert,after insert) {

    if(trigger.isBefore){
         if(trigger.isInsert){
             for(Speaker__c sp:Trigger.new){
             
                 if(sp.FirstName__c=='Ganesh'){
                     sp.Checkbox__c=true;
                 }
             }
             
    }
        
    }
    
   
   
}
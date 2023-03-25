trigger BeforeInsert on MindtreeNew__c (before insert) {
    
    for(MindtreeNew__c mteAfter: Trigger.new){
        if(mteAfter.City__c=='Bangalore'){
            mteAfter.City__c.addError('Maximum limit reached for '+mteAfter.City__c+' .......kindly add other city');
            
        }
    }

}
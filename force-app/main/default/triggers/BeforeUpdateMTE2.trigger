trigger BeforeUpdateMTE2 on MindtreeNew__c (before update) {
	
    if(Trigger.isBefore){
        for(MindtreeNew__c mte2: Trigger.new){
            if(mte2.City__c =='Chennai'){
                mte2.Office_Address__c='Siruseri Sipcot';
            }
        }
    }
    
}
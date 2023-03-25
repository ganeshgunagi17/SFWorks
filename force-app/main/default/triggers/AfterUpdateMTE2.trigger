trigger AfterUpdateMTE2 on MindtreeNew__c (after update) {

        for(MindtreeNew__c mte2:Trigger.new){
            MindtreeNew__c mte2Update=[select Id,Office_Address__c from MindtreeNew__c where Id=:mte2.Id];
           
            if(mte2Update.Office_Address__c=='Siruseri Sipcot'){
                mte2Update.Office_Address__c='Siruseri Sipcot3';
                
                 update mte2Update;   
            }
        }
   
    }
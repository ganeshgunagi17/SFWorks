trigger AfterUpdateMTE1 on MindtreeNew__c (after update) {
for(MindtreeNew__c mte: Trigger.new)
         	{
                
                    MindtreeNew__c mtupdate=[select Id,Mindtree_Office_Name__c from MindtreeNew__c where Id=:Trigger.new];
                
                if(mtupdate.Mindtree_Office_Name__c=='WhiteField 4'){
                    mtupdate.Mindtree_Office_Name__c='Xakdlkf';
                    update mtupdate;
                }
                
                          
          				
    		}
}
trigger BeforeUpdateMTE1 on MindtreeNew__c (before update) {
   
         for(MindtreeNew__c mte: Trigger.new)
         	{
       			 if(mte.City__c =='Bangalore' && mte.Mindtree_Office_Name__c=='WhiteField 1')
        				{
          					  mte.Mindtree_Office_Name__c='WhiteField 2';
             			}
    		}
    }
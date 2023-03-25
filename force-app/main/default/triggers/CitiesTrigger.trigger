trigger CitiesTrigger on Cities__c (before insert) {
Country__c country=[select Name,Zipcode__c from Country__c limit 1];
   // Cities__c city=[select Name from Cities__c limit 1];
    for(Cities__c c:Trigger.new){
        if(country.Name==c.Name){
            c.Zipcode__c=country.Zipcode__c;
            System.debug('Zipcode:'+c.Zipcode__c);
            
        }
    }
}
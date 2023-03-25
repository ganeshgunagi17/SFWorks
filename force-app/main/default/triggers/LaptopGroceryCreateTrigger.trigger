trigger LaptopGroceryCreateTrigger on Laptops__c (after insert) {
    for(Laptops__c laps:Trigger.new){
        if(laps.Laptop_Brand__c=='HP'){
            Grocery__c groc=new Grocery__c( Customer_Name__c='Ashika');
                insert groc;
        }
    }
}
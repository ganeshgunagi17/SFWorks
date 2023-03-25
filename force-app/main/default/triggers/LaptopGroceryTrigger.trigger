trigger LaptopGroceryTrigger on Laptops__c (before insert,before update) {

for(Laptops__c laps:Trigger.new){
    if(laps.Laptop_Brand__c=='Dell'){
    laps.Laptop_Brand__c.addError('Out of stock');
    }
}
}
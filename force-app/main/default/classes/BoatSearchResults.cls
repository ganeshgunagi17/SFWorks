public class BoatSearchResults {

    @AuraEnabled
    public static List<Boat__c> getBoats(String boatTypeId ){
        if(boatTypeId != ''){
            System.debug('Tharfdfdf'+boatTypeId);
            return [SELECT Id, BoatType__c, Picture__c, name,contact__r.Name from Boat__c where Id=:boatTypeId];
        }else{
            System.debug('kkkkkkkkkkkkkkkkkkkk'+boatTypeId);
            return [SELECT Id, BoatType__c, Picture__c, name,contact__r.Name from Boat__c];
        }
             
        }
       
    }
public class DeleteShowroomDuster {

    public static void deleterec(){
        List<Showroom_Pricing__c> scdel=new List<Showroom_Pricing__c>();
        for(Showroom_Pricing__c sc:[select Id from Showroom_Pricing__c where Car__c='Duster']){
            
            scdel.add(sc);
            
        }
        delete scdel;
    }
}
public class OpportunityExtensions {

    public Opportunity opp;
    public OpportunityExtensions(ApexPages.StandardController oppStan){
        this.opp=(Opportunity)oppStan.getRecord();
    }
    
    public String getMessage(){
        return 'hello '+opp.name+' '+opp.Stage_Status__c;
    }
}
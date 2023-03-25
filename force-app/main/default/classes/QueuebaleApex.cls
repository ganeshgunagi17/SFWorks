public class QueuebaleApex implements Queueable {

    public void execute(QueueableContext qc){
        for(Integer i=10;i<1000;i++){
            Speaker__c sc= new Speaker__c(FirstName__c='Anith'+i);
            insert sc;
            
        }
    }
}
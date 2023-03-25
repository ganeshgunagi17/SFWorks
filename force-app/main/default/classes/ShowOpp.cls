public class ShowOpp {
    public  List<Opportunity> showOppList{get;set;}
    public ShowOpp(){
        Id id=apexpages.currentPage().getParameters().get('id');
        showOppList=[select Id,Name from Opportunity where AccountId=:id];
        
    }
    public void ShowOpp1(){
        
    }
    public Class OppWrap{
        public Boolean OppCheck{get;set;}
    }
}
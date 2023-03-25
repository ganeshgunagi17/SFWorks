public class ConstructorPage {
    
    public String searchString{get;set;}
    public List<Account> listOpportunities{get;set;}
    
    public ConstructorPage(){
       
        listOpportunities=[Select Name,Industry,Rating from Account];
        
    }
    public void SearchMe(){
        listOpportunities=[Select Name,Industry,Rating from Account where Name like: '%'+searchString+'%'];
        
    }

}
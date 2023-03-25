public class MutiplicationSeries {

    public Integer inputnum{get;set;}
    public Integer result{get;set;}
    public List<Integer> multiplyList{get;set;}
    
    public void Multiply(){
        multiplyList=new List<Integer>();
        for(Integer i=1;i<=10;i++){
            
            result=i*inputnum;
            multiplyList.add(result);
        }
    }
}
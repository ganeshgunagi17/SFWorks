public class MulitplyNumbers {

    public Integer integer1{get;set;}
    public List<Integer> multiplylist{get;set;}
    public void multiplyme(){
        multiplylist=new List<Integer>();
        for(Integer i=1; i<=10 ; i++)
            multiplylist.add(integer1*i);
            
            }
}
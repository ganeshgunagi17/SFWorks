public class MultiClass {
    public Integer integervalue{get;set;} //2
    public List<Integer> integerlist{get;set;}
    
    
    
    public void multiplicationvals(){
        integerlist = new List<Integer>();
        for(Integer i=1; i<=10; i++){
            integerlist.add(integervalue*i);
        }
    }

}
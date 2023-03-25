public class ListDisplay {
    public Integer enterNumber{get;set;}
    public List<Integer> listNumber{get;set;}
    public void Submit(){
        listNumber=new List<Integer>();
        for(Integer i=1;i<=enterNumber;i++){
            listNumber.add(i);
        }
    }
}
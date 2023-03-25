public class ListIterator {
    public ListIterator(){
       List<Integer> listIt=new List<Integer>();
        listIt.add(1);
        listIt.add(2);
        listIt.add(3);
        listIt.add(4);
        listIt.add(5);
        listIt.add(6);
        listIt.add(7);
        listIt.add(8);
        List<List<Integer>> listIt2=new List<List<Integer>>{listIt};
             Integer counter=0;
            for(List<Integer> myList:listIt2){
                counter=counter+1;
            }
        
        System.debug('List Values are:'+listIt2);
    }
}
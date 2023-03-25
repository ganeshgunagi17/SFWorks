public class ColorsMap {
    public ColorsMap(){
        Map<Integer,String> cmap=new Map<Integer,String>();
        cmap.put(1, 'Pink');
        cmap.put(2, 'Orange');
        cmap.put(3, 'Green');
        cmap.put(4, 'Blue');
        System.debug('Values of key 4 is:'+cmap.get(4));
    }
}
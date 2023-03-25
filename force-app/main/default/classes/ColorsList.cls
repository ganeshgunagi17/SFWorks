public class ColorsList {
    public ColorsList(){
        List<String> colors=new List<String>();
    colors.add('Pink');
    colors.add('Yellow');
    colors.add('Green');
        colors.sort();
    System.debug('List Values:'+colors);
    }

}
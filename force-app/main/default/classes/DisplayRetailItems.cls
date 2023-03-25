public class DisplayRetailItems {

    @AuraEnabled
    public static List<String> displayItems(String itemnamevar, Integer itemquantvar){
        
       List<String> listString = new List<String>();
        listString.add(itemnamevar+'1');
        listString.add(itemquantvar+'2');
        return listString;
    }
}
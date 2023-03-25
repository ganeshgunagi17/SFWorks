public class testXMLDoc {

    public static void parseDomXML(){
        



           
        
           String roots = '<sObjects xmlns="http://www.force.com/2009/06/asyncapi/dataload" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> <sObject><FirstName>Ganesh1</FirstName><Phone>8266748484</Phone><LastName>Gunagi1</LastName></sObject></sObjects>';

          Dom.Document doc = new Dom.Document();
  doc.load(roots);
  Dom.XMLNode root = doc.getRootElement();	
 String xObjectID = walkthrough(root, 'ObjectID').trim();

System.debug('xob'+xObjectID);

                                                      } 
    
    
    public static String walkThrough(DOM.XMLNode node, String field) {
		String result = '\n';
		
		if(node.getNodeType() == DOM.XMLNodeType.ELEMENT) {
			
			if(node.getName().trim() == field) {
				result += node.getText().trim();
			}
			
			for(DOM.XMLNode child : node.getChildElements()) {
				result += walkThrough(child, field);
			}
			return result;
		}
		return 'ERROR';
	}
}
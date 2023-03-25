({
	displayChange : function(component, event, helper) {
		var valuechoosed =component.get("v.retailType");
        alert(valuechoosed);
	},
    
    processOrder : function(component,event,helper){
        var itemname = component.get("v.retailName");
        var itemType = component.get("v.retailType");
        var itemQuant = component.get("v.retailQuantity");
        var itemPrice = component.get("v.retailPrice");
       
        
        
        var action = component.get("c.displayItems");//invoke displayItems method from the server controller
        action.setParams({itemnamevar : itemname,itemquantvar:itemQuant});//passing values to displayItems method
        //set callback after the server action is being completed
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                alert("From server:"+response.getReturnValue());//will get the values returned from server
                var setvalues = response.getReturnValue();
                itemtoiterate = response.getReturnValue();
                
                component.find("itemNameChoosen").set("v.value",JSON.stringify(setvalues));//this will find
                //itemNameChoosen id from the component and set the value with the values returned from server
                
            }else{
                alert("From server:"+response.getError());
            }
        });
        $A.enqueueAction(action);
        
    }
})
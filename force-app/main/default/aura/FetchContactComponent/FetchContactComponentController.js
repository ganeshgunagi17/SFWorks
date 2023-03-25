({
	callInit : function(component, event, helper) {
		var action = component.get("c.getContacts");
        var valuesList=[];
        action.setCallback(this,function(response){
            if(response.getState() == "SUCCESS"){
                valuesList = response.getReturnValue();
            }else{
                alert("error");
            }
        });
        $A.enqueueAction(action);
	}
})
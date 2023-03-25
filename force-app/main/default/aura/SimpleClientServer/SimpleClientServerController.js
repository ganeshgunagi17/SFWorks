({
	GetVal : function(component, event, helper) {
        
		var action=component.get("c.stringValues");
        action.setParams({firstname:component.get("v.message")});
        action.setCallback(this,function(response){
           var state=response.getState();
            if(state=="SUCCESS"){
                alert('From Apex Controller(Server Side Controller): '+response.getReturnValue());
            }
        });
       $A.enqueueAction(action);
	}
})
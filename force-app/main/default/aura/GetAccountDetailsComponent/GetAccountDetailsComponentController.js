//GetAccountDetailsComponentController

({
	GetAccount : function(component, event, helper) {
       
		var action=component.get("c.getAccountDetails");
       
        action.setParams({AccName:component.get("v.AccountName")});
        action.setCallback(this,function(response){
             
            var state=response.getState();
            if(state=="SUCCESS"){
                component.set("v.fetchdetails",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})
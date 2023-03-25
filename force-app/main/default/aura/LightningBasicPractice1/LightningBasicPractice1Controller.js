({
	getAccounts : function(component, event, helper) {
		
        var action=component.get("c.getAccountsController");
        action.setParams({name:component.get("v.accountname")});
        action.setCallback(this,function(response) {
            var state=response.getState();
            if(state === "SUCCESS") {
                component.set("v.AccountList",response.getReturnValue());
            } else if(state === "ERROR") {
                alert("Error");
                component.set("v.AccountList","");
            }
        });
        $A.enqueueAction(action);
	}
})
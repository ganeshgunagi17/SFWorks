({
	ClickCreate : function(component, event, helper) {
		
        var action=component.get("c:getDetails");
        action.setParams({Accountname:component.get("v.acc.Name")})
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state="SUCCESS"){
                alert(response.getReturnValues());
            }else{
                alert('false');
            }
        });
        $A.enqueueAction(action);
        }
	})
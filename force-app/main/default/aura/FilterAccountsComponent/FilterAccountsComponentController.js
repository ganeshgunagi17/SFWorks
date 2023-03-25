({
	doInit : function(component, event, helper) {
		var cmp = component.get("c.getAllAccounts");
        
        cmp.setCallback(this,function(response){
            if(response.getState()==='SUCCESS'){
                component.set("v.accountValues",response.getReturnValue());
            }else{
                alert('error occurred');
            }
        });
        $A.enqueueAction(cmp);
	},
    showField : function(component,event,helper){
        
        document.getElementById('fiterFields').style.display='block';
    },
    fireEvent : function(component,event,helper){
        
        var stringval = component.get("v.searchString");
       
        var actionEvent = $A.get("e.c:FilterComponentEvent");
        actionEvent.setParams({
            'searchkey':stringval
        });
        actionEvent.fire();
        
        console.log('fired event');
    }
})
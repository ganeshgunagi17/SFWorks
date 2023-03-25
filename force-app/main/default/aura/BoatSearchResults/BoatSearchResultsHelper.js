({
    onSearch  : function(component, event) 
    {
        //console.log('HELPER'+component.get("v.boatTypeId"));
        var x = component.get("v.boatTypeId");
        alert('tharun in boatresul'+x);
        var action = component.get("c.getBoats");
        action.setParams({
            "boatTypeId" : x
        });
        
        action.setCallback(this, function(response){
            
            var statee = response.getState();
            if (statee === "SUCCESS")
            {
                
                component.set("v.boats", response.getReturnValue());
                console.log(" passed with state-->" + statee);
            }
            else {
                console.log("Failed with state-->" + statee);
            }
        });
        
        $A.enqueueAction(action);
        
        
    }
})
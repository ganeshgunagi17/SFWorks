({
	doInit : function(component, event, helper) 
    {
        var createNewBoat = $A.get("e.force:createRecord");
        if (createNewBoat) {
            component.set("v.showNew", true);
        }else{
             component.set("v.showNew", false);
        }

        var action = component.get("c.getAllBoatTypes");
		
        action.setCallback(this,function(response){
           var state = response.getState();
            if(state == "SUCCESS")
            {
                var resp = response.getReturnValue();
                component.set("v.boatTypes",resp);
            }else{
                console.log("Falied..");
            }
            
        });
        
        $A.enqueueAction(action);

	},
    
    handleNewClick : function (component, event, helper)
    {
        var selvalue = component.find("types").get("v.value");
        	console.log('-->',selvalue);
        var createRecord = $A.get("e.force:createRecord");
        
        if (createRecord && selvalue !== '')
        {
            createRecord.setParams({
                "entityApiName" : "Boat__c",
                "defaultFieldValues" : {
                    'BoatType__c' : selvalue
                }
            });
            
            createRecord.fire();
        }else
        {
            console.log('Show Toast..');
            var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                "type":"Warning",
                "message": "Select the boat type."
            });
            toastEvent.fire();
        }
               
    },
    
    handleTypeChange: function(component, event, helper)
    {
        var boatTypeId = component.find("types").get("v.value");
        
        component.set("v.boatTypeId", boatTypeId);
        
        
    },
    
    onFormSubmit: function(component, event, helper)
    {
        var selectedBoatTypeId = component.get("v.boatTypeId");
        
        //var sendtoEvent = component.getEvent("FormSubmit");
        var sendtoEvent = $A.get("event.c:FormSubmit");
        
        sendtoEvent.setParams({
            "formData" :  {
                "boatTypeId" : selectedBoatTypeId
            }
        });
        
        sendtoEvent.fire();
        
        
    }
 
})
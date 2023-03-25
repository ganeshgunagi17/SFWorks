({
	handleSaveRecord : function(component, event, helper) {
		var action = component.find('recordEditorId');
        action.saveRecord($A.getCallback(function(saveResult){
            if(saveResult.state === 'SUCCESS'){
                alert('save successful');
            }else if (saveResult.state === "INCOMPLETE") {
                console.log("User is offline, device doesn't support drafts.");
            }
        }))
	}
})
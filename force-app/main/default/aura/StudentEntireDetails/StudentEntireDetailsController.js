({
	handleClick : function(component, event, helper) {
		component.set("v.showModal",true);
	},
    closeModal:function(component,event,helper){
        component.set("v.showModal",false);
    },
    handleSave:function(component,event,helper){
     component.set("v.additionaldataEntered",true)
     component.set("v.showModal",false);
        var mobileupdated = component.get("v.targetFieldsData.Mobile__c");
        var recid =  component.get("v.recordId");
        var action = component.get("c.handleSaveRecord");
        action.setParams({
            "Id":recid,
            "num":mobileupdated
        });
        action.setCallback(this,function(response){
            console.log('response'+response.state);
            if(response.getState() === "SUCCESS"){
                var res = response.getReturnValue();
                alert('successfully updated ' + res);
            }else{
                alert('failed');
            }
        });
        $A.enqueueAction(action);
        component.find('recordDataId').reloadRecord();
    },
    
})
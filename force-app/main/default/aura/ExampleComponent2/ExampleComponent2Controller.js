({
	validateName : function(component, event, helper) {
		var tovalidatename = component.get("v.toValidate");
        alert(tovalidatename);
        var compset= component.set("v.toValidate","Sjsjs");
        component.find("mynameid").set("v.value","ganeshid");
     var validi=   component.find("mynameid").reduce(function(validSoFar,inputCmp){
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get("v.validity").valid;
            	
        },true);
        if(validi){
            alert("All ok");
        }else{
            alert("not ok");
        }
               
	}
})
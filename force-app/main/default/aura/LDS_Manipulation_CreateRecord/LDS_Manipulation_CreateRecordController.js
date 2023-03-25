({
	startInit : function(component, event, helper) {
        component.find("recordCreatorId").getNewRecord(
            "Account",
            null,
            false,
            $A.getCallback(function(){
                var reco =  component.get("v.createContact");
                var err = component.get("v.contactError");
                if(err || (reco==null)){
                    alert('error');
                }else{
                    var resultsToast = $A.get("e.force:showToast");
            resultsToast.setParams({
                "title": "passed",
                "message": "The record was deleted."
            });
            resultsToast.fire();
                    alert('passed');
                }
            })
        );
	}
})
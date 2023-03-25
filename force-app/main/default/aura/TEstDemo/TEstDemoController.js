({
	doInit : function(component, event, helper) {
		alert("ganesh"); 
 
        window.setTimeout(
    $A.getCallback(function() {
        $A.get("e.force:closeQuickAction").fire();
    }), 0
);

	}
})
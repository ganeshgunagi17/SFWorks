({
	Clickevent : function(component, event, helper) {
		var compid=component.get("v.lightname");
        console.log("Current text:"+compid);
        
        var target=event.getSource();
        var compset=component.set("v.lightname",target.get("v.label"));
	}
})
({
	Display : function(component, event, helper) {
		var compevent =component.getEvent("sampleEvent");
        alert("in display");
        compevent.setParams({"eventname":"Hi from controller !!"});
        compevent.fire();
      
       
	}
    
})
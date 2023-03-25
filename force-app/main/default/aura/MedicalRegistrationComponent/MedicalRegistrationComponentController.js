({
	processForm : function(component, event, helper) {
        var toastevent = $A.get("e.force:showToast");
      
        toastevent.setParams({
            "type":'Success',
            "duration":'2000',
            'mode':'dismissible',
            "title":'Successfully registered',
            "message":'Your appointment is scheduled on '+component.get('v.AppointmentDate')
        });
        toastevent.fire();
      
	},
    checkExisting : function(component,event,helper){
        alert('in checkExisint');
        var eventpar = component.getEvent('medEvent');
        eventpar.setParams({
            'existingUserName':'ganesh'
        });
        eventpar.fire();
    }
})
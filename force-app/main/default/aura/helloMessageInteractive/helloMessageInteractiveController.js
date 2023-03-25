({
	handleclick2 : function(component, event, helper) {
        var btnClicked=event.getSource();//get the source for which this event was generated, i.e. button
        
        var buttonLabel=btnClicked.get("v.label");//get the button's attribute value -- label
        
        component.set("v.message",buttonLabel); //here set the components attribute 'message' with the button's label
	},
    
    handleclick1:function(component,event,helper){
        var btnlabel=event.getSource().get("v.label");
        component.set("v.message",btnlabel);
    }
})
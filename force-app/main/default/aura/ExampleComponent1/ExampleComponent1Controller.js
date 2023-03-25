({
	doAddition : function(component, event, helper) {
        
		var integer1 = component.get("v.number1");
        var integer2 = component.get("v.number2");
        alert(parseInt(integer1)+parseInt(integer2));
	},
     doSubtraction: function(component, event, helper) {
        
		var integer1 = component.find("number1id").get("v.value");
        var integer2 = component.find("number2id").get("v.value");
        alert(integer1 - integer2);
     },
    doMultiplication: function(component, event, helper) {
        
		var integer1 = component.find("number1id").get("v.value");
        var integer2 = component.find("number2id").get("v.value");
        alert(integer1 * integer2);
     
    },
    doDivision: function(component, event, helper) {
        
		var integer1 = component.find("number1id").get("v.value");
        var integer2 = component.find("number2id").get("v.value");
        alert(integer1 / integer2);
     
    }
})
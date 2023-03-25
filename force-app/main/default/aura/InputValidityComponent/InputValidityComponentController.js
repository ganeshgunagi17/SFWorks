({
	ClickCheck : function(component, event, helper) {
        
        alert(component.find('recordid'));
        var checkvalid=component.find('recordid').reduce(function(validSoFar,inputCmp){
            
           inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        },true);
        
        if(checkvalid){
            alert("everything entered is correct");
        }else{
            alert("everything entered is wrong");
        }
	}
})
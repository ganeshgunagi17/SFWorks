({
	handleLogin : function(component, event, helper) {
        alert('handleLogin');
	var uname = component.get("v.adminUserName");
    var pwd = component.get("v.adminPassword");
        var eventfire = component.getEvent("jobEvent");
        eventfire.setParams({
            'username':uname,
            'password':pwd
            
        });
        
        eventfire.fire();
	},
    togglePasswordVisibility : function(component, event, helper){
        if(component.get("v.showPassword",true)){
            component.set("v.showPassword",false);
        }else{
            component.set("v.showPassword",true);
        }
    }
})
({
	doInit : function(component, event, helper) {
        alert("indonit parent comp");
        console.log('in 1st js');
        
       //use event or aura method to invoke child component from parent component as below
        // 1. Event based
        //var eventname =  $A.get("e.c:CheckDetail");
//        eventname.setParams({"myEvent":"MyFirstEven"});
  //      eventname.fire();
  //      
  //      
  //      2. Below is aura method
      //  var comp2methd =  component.find("childComp");
        //comp2methd.method2('Ganesh');
        
          //var evt = $A.get('e.force:createRecord');
        //evt.setParams({
          //  "entityApiName":"Account"
        //});
        //evt.fire();
	//}
	//
	//3. Navigation in lightning
	var nav = component.find("nav");
        var pageref = {
            type : 'standard__recordPage',
            attributes:{
                actionName : "view",
                objectApiName: "Account",
                recordId : "0017F00001dzSPn"
            }
            
        };
        nav.navigate(pageref);
    }
})
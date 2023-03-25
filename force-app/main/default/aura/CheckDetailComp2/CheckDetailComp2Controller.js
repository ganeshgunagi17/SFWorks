({
	checkme : function(component, event, helper) {
        alert("in checkme");
		var mess =  event.getParam("myEvent");
        alert(mess);
	},
    domethod: function(component,event,helper){
        var prm = event.getParam('arguments');
        alert(prm.param1+' from child comp');
      
    },
    inInit : function(comp,event,helper){
    alert('in iniit');
}
})
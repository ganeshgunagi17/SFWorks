({
	HandlerEventAction:function(component,event,helper) {
        alert("in handler");
       
      var message= event.getParams("eventname");
      alert(JSON.stringify(message));
        
    }
})
({
	displaycn : function(component, event, helper) {
        var complist = component.get("v.detailList");
       
		var com=[] 
        

        for(var i in complist ){
            console.log("log "+i);
            var sp = complist[i]+'adasd';
            com.push(sp);
            alert(com);
            var com1 ={};
            com1='adsfadsf';
          com.push(com1);
            alert(com);
            
      }
        
                   component.set("v.detailList",com);
        
        
	}
})
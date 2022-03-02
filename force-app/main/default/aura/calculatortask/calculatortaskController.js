({
	doadd : function(component, event, helper) {
		var fnum = component.get("v.fnumber");
        var snum = component.get("v.snumber");
        var Result = parseInt(fnum)+parseInt(snum);
        component.set("v.result",Result);
        component.set("v.actionName","Addition value");
      //  alert(Result);
       // alert(component.get("v.result"));  
	},
     dosubtract : function(component, event, helper){
        		var fnum = component.get("v.fnumber");
                var snum = component.get("v.snumber");
                var Result = parseInt(fnum)-parseInt(snum);
                component.set("v.result",Result);
                component.set("v.actionName","subtraction value");
    },
    dodivision : function(component, event, helper){
        		var fnum = component.get("v.fnumber");
                var snum = component.get("v.snumber");
                var Result = parseInt(fnum)/parseInt(snum);
                component.set("v.result",Result);
                component.set("v.actionName","division value");
    },
    domultiplication : function(component, event, helper){
        		var fnum = component.get("v.fnumber");
                var snum = component.get("v.snumber");
                var Result = parseInt(fnum)*parseInt(snum);
                component.set("v.result",Result);
                component.set("v.actionName","multiplication value");
    }
})
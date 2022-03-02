({
	doAdd : function(component, event, helper) {
		   var fNumber = parseInt(component.get("v.fNumber"));
           var sNumber = parseInt(component.get("v.sNumber"));
        var action = component.get("c.doAddition");
        action.setParams({"firstNumber":fNumber,"secondNumber":sNumber});
        action.setCallback(this,function(response){
         component.set('v.result',response.getReturnValue())
           var addResult= response.getReturnValue();  
           alert(addResult);
        });
        $A.enqueueAction(action);
	},
    doSubtract : function(component, event, helper) {
		   var fNumber = parseInt(component.get("v.fNumber"));
           var sNumber = parseInt(component.get("v.sNumber"));
        var action = component.get("c.doSubtraction");
        action.setParams({"firstNumber":fNumber,"secondNumber":sNumber});
        action.setCallback(this,function(response){
         component.set('v.result',response.getReturnValue())
           var addResult= response.getReturnValue();  
         alert(addResult);
        });
        $A.enqueueAction(action);
    },
    doDiv : function(component, event, helper) {
		   var fNumber = parseInt(component.get("v.fNumber"));
           var sNumber = parseInt(component.get("v.sNumber"));
        var action = component.get("c.doDivision");
        action.setParams({"firstNumber":fNumber,"secondNumber":sNumber});
        action.setCallback(this,function(response){
         component.set('v.result',response.getReturnValue())
           var addResult= response.getReturnValue();  
         alert(addResult);
        });
        $A.enqueueAction(action);      
    },
           doMulti : function(component, event, helper) {
		   var fNumber = parseInt(component.get("v.fNumber"));
           var sNumber = parseInt(component.get("v.sNumber"));
        var action = component.get("c.doMultiplication");
        action.setParams({"firstNumber":fNumber,"secondNumber":sNumber});
        action.setCallback(this,function(response){
         component.set('v.result',response.getReturnValue())
           var addResult= response.getReturnValue();  
         alert(addResult);
           });
         $A.enqueueAction(action);
        }
      
})
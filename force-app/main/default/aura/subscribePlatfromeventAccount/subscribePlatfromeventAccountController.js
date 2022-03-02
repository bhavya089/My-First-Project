({
	subscribe : function(component, event, helper) {
		 component.set('v.notifications', []);
         const empApi = component.find('empApi');
         const channel = '/event/Account_platform_event__e';
         const replayId = -1;
         
        empApi.subscribe(channel, replayId, $A.getCallback(eventReceived =>{
        	const notifications = component.get('v.notifications');
          	notifications.push(eventReceived.data.payload.Accountname__c);
          	component.set('v.notifications', notifications);
            component.set('v.evntRecieved',true);
    	})).then(subscription => {
       		console.log('Subscribed to channel ', subscription.channel); 
    	});
          
	}
})
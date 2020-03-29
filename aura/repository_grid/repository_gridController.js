({
	doInit: function(component, event, helper) 
    {
        component.set('v.columns', [
            {label: 'Name', fieldName: 'name', type: 'text'},
            {label: 'Forks', fieldName: 'forks', type: 'number'},
            {label: 'Stars', fieldName: 'stars', type: 'number'}
        ]);
        
		var action = component.get("c.loadComponent");

        action.setCallback(this, function(cb)
        {
            var state = cb.getState();
            if(state == "SUCCESS") 
            {
                var response = cb.getReturnValue();
     
                var dataarray = [];
                for(let i in response)
                {
                    console.log(response[i]);
                    dataarray.push({"name": response[i].Name, "forks": response[i].Forks__c, "stars": response[i].Stars__c});
                }

                component.set('v.data', dataarray);
            }
        });
        
        $A.enqueueAction(action);
	}
})

({
    doInit: function(component, event, helper) 
    {
        var action = component.get("c.loadComponent");

        action.setCallback(this, function(a)
        {
            var state = a.getState();
            if(state == "SUCCESS") 
            {
                component.set("v.repositories", a.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
	}
})

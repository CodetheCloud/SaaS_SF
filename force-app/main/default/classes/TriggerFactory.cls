public class TriggerFactory
{
    
    public static void createHandler(Schema.sObjectType soType)
    {
        // Get a handler appropriate to the object being processed
        ITrigger handler = getHandler(soType); //here what we hold 

        
        // Make sure we have a handler registered, new handlers must be registered in the getHandler method.
        if (handler == null)
        {
            
        }
         
        // Execute the handler to fulfil the trigger
        execute(handler);
    }
     
    /**
     * private static method to control the execution of the handler
     *
     * Arguments:   ITrigger handler - A Trigger Handler to execute
     */
    private static void execute(ITrigger handler)
    {
        // Before Trigger
        if (Trigger.isBefore)
        {
            // Call the bulk before to handle any caching of data and enable bulkification
            handler.bulkBefore();  //it it common method for all the before trigger
             
            // Iterate through the records to be deleted passing them to the handler.
            if (Trigger.isDelete)
            {
                    handler.beforeDelete();
            }
            // Iterate through the records to be inserted passing them to the handler.
            else if (Trigger.isInsert)
            {
                    handler.beforeInsert();
            }
            // Iterate through the records to be updated passing them to the handler.
            else if (Trigger.isUpdate)
            {

                    handler.beforeUpdate();
            }
        }
        else
        {
            // Call the bulk after to handle any caching of data and enable bulkification
            handler.bulkAfter();  //common method for all the after trigger
             
            // Iterate through the records deleted passing them to the handler.
            if (Trigger.isDelete)
            {
                    handler.afterDelete();
            }
            // Iterate through the records inserted passing them to the handler.
            else if (Trigger.isInsert)
            {
                    handler.afterInsert();
            }
            // Iterate through the records updated passing them to the handler.
            else if (Trigger.isUpdate)
            {
                    handler.afterUpdate();
            }
            else if (Trigger.isUnDelete )
            {
                    handler.afterUnDelete();
            }            
        }
         
        // Perform any post processing
        handler.andFinally();
    }
     
    /**
     * private static method to get the appropriate handler for the object type.
     * Modify this method to add any additional handlers.
     *
     * Arguments:   Schema.sObjectType soType - Object type tolocate (SObject.sObjectType)
     *
     * Returns:     ITrigger - A trigger handler if one exists or null.
     */
    private static ITrigger getHandler(Schema.sObjectType soType)
    {
		
        if (soType == Account.sObjectType) {
            //AccountTriggerHandler ab = new AccountTriggerHandler(); 
            // return ab; 
            return new AccountTriggerHandler();  //handler class
        }
       
         if (soType == Contact.sObjectType) {
            return new JustContactTrigger();  
        }

        if (soType == Patient__c.sObjectType) {
            return new PatientTriggerHandler();  
        }
       
        if (soType == Doctor__c.sObjectType) {
            return new DoctorTriggerhandler();  
        }
        
        if (soType == Opportunity.sObjectType) {
            return new OppsTriggerhandler();  
        }
        


        
        return null;
    }
}
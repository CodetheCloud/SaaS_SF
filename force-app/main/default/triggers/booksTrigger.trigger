trigger booksTrigger on Book__c (after update) {
		
    	System.debug(Trigger.new); 
    	System.debug(Trigger.newMap);
    	System.debug('=====');
    
        System.debug(Trigger.old);
    	System.debug(Trigger.oldMap);
    
 	
    
    
    
}
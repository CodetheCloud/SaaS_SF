trigger DoctorTrigger on Doctor__c (before insert) {
	
    System.debug(Trigger.new);
    System.debug(Trigger.NewMap); 
   	system.debug(Trigger.old);
    system.debug(Trigger.oldMap);
    
    for(integer i = 0 ; i<5; i++){
        String name = 'Abc';
        System.debug(name);
    }
    
}
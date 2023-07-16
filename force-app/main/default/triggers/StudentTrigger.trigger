trigger StudentTrigger on Student__c (before insert, after insert) {
    
    System.debug(Trigger.new);

}
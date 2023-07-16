trigger MyFirstAccTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    
         TriggerFactory.createHandler(Account.sObjectType);  //for account trigger it must be Account.sObjectType
    //for Opportunity Triggger - Opportunity.sObjectType
   
}
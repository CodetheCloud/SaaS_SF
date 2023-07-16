public class AccountTriggerHandler implements iTrigger {
    
    public void bulkBefore(){
        // If this a delete trigger Cache a list of Account Id's that are 'in use'
        
    }
     
    public void bulkAfter(){
    
    }
         
    public void beforeInsert(){
        system.debug('before insert account == 123');
        AccountTriggerHelper.job1();
    }
     
    public void beforeUpdate(){
     	system.debug('this is one place to run before update today =====');
        System.debug(Trigger.new);
        
    }
   
    public void beforeDelete(){  
        system.debug('before delete account 14July 2023');
    }
     
    public void afterInsert(){
        system.debug('after insert account');
        AccountTriggerHelper.job2();
    }
     
    public void afterUpdate(){
        system.debug('this is one place to run after===== update today =====');
        System.debug(Trigger.new);
        System.debug(Trigger.Old);
        System.debug(Trigger.oldMap);
    }
     
    public void afterDelete(){
        
    }

    public void afterUnDelete(){
        system.debug('after undelete account');
    }
     
 
    public void andFinally(){
        // insert any audit records

    }
    

   
}
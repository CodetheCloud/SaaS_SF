public class PatientTriggerHandler  implements ITrigger {

    public PatientTriggerHandler(){
        
    }
    
    public void bulkBefore(){
        // If this a delete trigger Cache a list of Account Id's that are 'in use'
        system.debug('bulk before of patient trigger');
    }
     
    public void bulkAfter(){
      system.debug('bulk after of patient trigger');
    }
         
    public void beforeInsert(){
        system.debug(' before insert of patient trigger');
    }
     
    public void beforeUpdate(){
     system.debug(' before update of patient trigger');
        
    }
   
    public void beforeDelete(){  
        system.debug('before delete pat');
    }
     
    public void afterInsert(){
        system.debug('after insert pat');
    }
     
    public void afterUpdate(){
          system.debug('aftetr update of pat trigger');      
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
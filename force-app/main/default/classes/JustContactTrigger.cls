public class JustContactTrigger implements iTrigger{
        public void bulkBefore(){
        // If this a delete trigger Cache a list of Account Id's that are 'in use'
    }
     
    public void bulkAfter(){
    
    }
         
    public void beforeInsert(){
        system.debug('before insert con == 123');
    }
     
    public void beforeUpdate(){
     
        
    }
   
    public void beforeDelete(){  
        system.debug('before delete con');
    }
     
    public void afterInsert(){
        system.debug('after insert con');
    }
     
    public void afterUpdate(){
    }
     
    public void afterDelete(){
        
    }

    public void afterUnDelete(){
            system.debug('after undelete con');
    }
     
 
    public void andFinally(){
        // insert any audit records

    }


}
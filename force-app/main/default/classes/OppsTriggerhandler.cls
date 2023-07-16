public class OppsTriggerhandler implements iTrigger  {

     public void bulkBefore(){
        // If this a delete trigger Cache a list of Account Id's that are 'in use'
        
    }
     
    public void bulkAfter(){
    
    }
         
    public void beforeInsert(){
        
    }
     
    public void beforeUpdate(){
        
        
     system.debug('account 23rd July before update');
       
        
    }
   
    public void beforeDelete(){  
        system.debug('before delete account');
    }
     
    public void afterInsert(){
        createContactONEachAccountCreatio(Trigger.new);
        system.debug('after insert account');
    }
     
    public void afterUpdate(){
        system.debug('this is one place to run after===== update today =====');
        sendEmailToAcOnwer();
    }
     
    public void afterDelete(){
        
    }

    public void afterUnDelete(){
            system.debug('after undelete account');
        sendEmailToAcOnwer();
    }
     
 
    public void andFinally(){
        // insert any audit records

    }
    
    //to send the email on after update and after delete
    public static void sendEmailToAcOnwer(){
        
    }
    
    public static void createContactONEachAccountCreatio(list<Account> listAc){
        
    }
    
}
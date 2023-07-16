public class BatchTime implements Database.Batchable<sObject>{

    integer i = 0 ; //instance variable 
	// by default behavior is stateless 
	// you can maintain the state by using Database.Stateful
    public Database.QueryLocator start(Database.BatchableContext bcc) {
        system.debug('start method');
        string str1 = 'select id, name, phone from account'; 
        return Database.getQueryLocator(str1);   
     
    }
    
     public void execute(Database.BatchableContext bcx, List<Account> acList) {
       	
         for(Account ac: acList){
            
                 i++;
            
         }
         system.debug(acList);
         system.debug(acList.size());
        
         
     }
    
    public void finish(Database.BatchableContext bcv) {
        system.debug('finish method');
        system.debug(i);
    }
    
    
    
}
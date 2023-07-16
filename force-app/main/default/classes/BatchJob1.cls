public class BatchJob1 implements Database.Batchable<sObject>{


   
    public database.QueryLocator start(database.BatchableContext bc){
        
        string qery= 'Select id,Name,alias,isactive,lastlogindate From User';
   		return database.getQueryLocator(qery);
    }
    
    public void execute(database.BatchableContext bc,list<user> usrList){
       
         system.debug(bc);
     }
    
    public void finish(database.BatchableContext bc){
      system.debug(bc);
    }
    
    
	
}
public class BatchDemo implements Database.Batchable<sObject>, Database.Stateful {

    	integer noofAcc = 0 ; 
    	integer noOfRecs = 0;
        public Database.QueryLocator start(Database.BatchableContext bc) {
            
            system.debug('start method');
			string str = 'select id, name from Account';   //1000
            return Database.getQueryLocator(str); 
        }
    
    
    	public void execute(Database.BatchableContext bc, List<Account> acList) {
            system.debug(acList);
            system.debug(acList.size());
            
            noOfRecs = noOfRecs + acList.size(); 
            
            for(Account ac: acList){
            }
            
            update acList;
            
        }
    
        public void finish(Database.BatchableContext bc) {
            system.debug('finish method');
            system.debug(noOfRecs);
        }
    
}
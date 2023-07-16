public class mysupBatch implements Database.Batchable<sObject>{
    
    
            public Database.QueryLocator start(Database.BatchableContext bc) {
                system.debug('start method');
                string queryVar = 'select id, name from account';
                return Database.getQueryLocator(queryVar); // 75,000 -> 50 Million
            }
    
            public void execute(Database.BatchableContext bc, List<Account> accListAny) {
                system.debug('execute method');
                system.debug(accListAny);
                
            }
    
            public void finish(Database.BatchableContext bc) {
            	system.debug('finish method');
            }
    

}
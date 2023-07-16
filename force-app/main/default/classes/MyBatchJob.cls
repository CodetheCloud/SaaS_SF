public class MyBatchJob implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc) {
            
		system.debug('start method of my batch class');
		string str = 'select id, name from account';
        return Database.getQueryLocator(str); // 200 recs in single batch
        
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList) {
        system.debug('execute method = '+ accList.size());
        system.debug('execute method data = '+ accList);
        
    }
    
    public void finish(Database.BatchableContext bc) {
    	system.debug('finish method of my batch class');
    }
    
}
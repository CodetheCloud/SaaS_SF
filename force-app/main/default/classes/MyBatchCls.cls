public class MyBatchCls implements Database.Batchable<sObject> {

    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        system.debug('start method');
        String str = 'select id, name, phone, industry from account';  //valid soql query
        return Database.getQueryLocator(str);      // 1 million records =? 5K batch
		        
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList) {
        system.debug('execute method');
        system.debug(accList);
        system.debug(accList.size() ); 
        
    }
    
    public void finish(Database.BatchableContext bc) {
        system.debug(bc);
     	system.debug('finish method');
    }
}
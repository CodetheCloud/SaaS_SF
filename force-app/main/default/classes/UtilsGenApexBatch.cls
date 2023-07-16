public class UtilsGenApexBatch implements Database.Batchable<sObject>, Schedulable {
	
    public string fldMain; 
    public string lmtMain; 
    
   	public void execute(SchedulableContext ctxany) {
       	UtilsGenApexBatch ob = new UtilsGenApexBatch(' id, name ', ' 500 ');
		id jobId = Database.executeBatch(ob,150);  // async apex. 

    }
    
    
    public UtilsGenApexBatch(string fld, string lmt){
        system.debug('constructor called');
        this.fldMain = fld; 
        this.lmtMain = lmt; 
        
    }
    
	public Database.QueryLocator start(Database.BatchableContext obj) {
        
            system.debug('start method');
        	system.debug(this.fldMain);
        	system.debug(this.lmtMain);
        	string soqlQuery =  'select '  + this.fldMain  + ' from contact limit ' + this.lmtMain ; 
        	system.debug(soqlQuery);
        	return Database.getQueryLocator(soqlQuery);  
            
	}
   

    
    //200 rec in 1 batch   583 rec = 
	public void execute(Database.BatchableContext obj, List<Contact> conList) {
        
        for(Contact con: conList){
            con.phone = null; 
        }
        
        //update conList;  
       
    }
    
    public void finish(Database.BatchableContext obj) {
        system.debug('finish method');
        
    }
    
}
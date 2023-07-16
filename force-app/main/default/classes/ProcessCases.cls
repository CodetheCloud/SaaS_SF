public class ProcessCases implements Database.Batchable<sObject>{

    Id accId ; 
    public ProcessCases(Id acId){
        this.accId = acId;
    }
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
       
        string str =  'select id, name from conact where accountid = :' + this.accId;
        system.debug(str);
        return Database.getQueryLocator(str); //only to get the data from db, 
    }
    
    public void execute(Database.BatchableContext bc, List<Contact> conList) {
      system.debug(conList);
    
    }
    
    public void finish(Database.BatchableContext bc) {
        system.debug('finish');
    }
    
    
}
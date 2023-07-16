public class GammaBatchProcess implements database.Batchable<sObject> {

        public database.QueryLocator start(database.BatchableContext bc){
            System.debug('Start Method');
            String strSOQL = 'select id, name, Phone, Email__c from Account';
            
            return database.getQueryLocator(strSOQL);  //get the data from the DB/sObjects  //This is the Actual SOQL and 
            // will get the data from the sObject
            
        }
    
    
        public void execute(database.BatchableContext bc ,list<Account> accList ){
            System.debug('Execute Method');
            System.debug(accList);
            
        }
    
        public void finish(database.BatchableContext bc){
            System.debug('Finish Method');
        }

}
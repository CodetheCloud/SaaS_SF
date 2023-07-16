public class DemoApexBatch implements Database.Batchable<sObject>{
   
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('Start method of DemoApexBatch');
        String str = 'select id, name from Lead limit 1';
        
        System.debug(Database.getQueryLocator(str));
        return Database.getQueryLocator(str);
    }
    public void execute(Database.BatchableContext bc, List<Lead> leadList){
        System.debug('In execute method.');
        List<Account> Allaccs = new List<Account>();
        List<Contact> AllCons = new List<Contact>();
       
        for(Lead ld : leadList){
            Account acc = new Account(name = ld.name);
            Contact con = new Contact(lastname = ld.name);
            Allaccs.add(acc);
            AllCons.add(con);
        }
        insert Allaccs;
        insert AllCons;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Finish method.');
    }
}
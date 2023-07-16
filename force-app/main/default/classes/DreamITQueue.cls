public class DreamITQueue implements Queueable{
    //member variable. 
    public list<account> listACMain; 
    
    public DreamITQueue(list<Account> accL){
		system.debug('constructor called'); 
        this.listACMain = accL;
        system.debug(this.listACMain);
    }
    
    public void execute(QueueableContext context) {
    	system.debug('ABC');
        system.debug(this.listACMain);
    }

}
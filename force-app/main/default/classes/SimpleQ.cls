public class SimpleQ implements Queueable { 
    
    public list<account> acList;
    
    public SimpleQ(list<account> accList){
       this.acList =  accList;
        
    }    
    
    public void execute(QueueableContext context) {
        //your async code
        system.debug(acList.size());
        system.debug(acList);
    }

}
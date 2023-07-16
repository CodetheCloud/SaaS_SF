public class ApexQueue implements Queueable {
	
    public list<Account> AcList;
    public Contact conR; 
    
    public ApexQueue(list<Account> AcListP1, Contact conRP2 ){
        this.AcList = AcListP1;
        this.conR = conRP2;
    }
    
     public void execute(QueueableContext context) {
        //your async code
        system.debug(this.AcList);
        system.debug(this.conR);
        
    }
  
}
public class Util2Queueable implements Queueable{
    
    public Account myAc;   //Instance Variable
    public Util2Queueable(Account ac){  //Constructor
        System.debug(ac);
        myAc = ac;  // from constructor param we are assinging it to instance variable. 
        
    }
    
    public void execute(QueueableContext context) {
        system.debug('updatePhone');
        System.debug(myAc);  //Instance Variable        
    }
  
}
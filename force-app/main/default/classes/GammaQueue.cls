public class GammaQueue implements Queueable {
    
    public Account MyAc;   //Instance variable
    
    public GammaQueue(Account acParam){
       MyAc =  acParam;
    }
    
    
    //Async Method
    public void execute (QueueableContext context) { 
      	System.debug('GammaQueue');
        System.debug(MyAc);
    }
    
    public static void abc(){
        
    }

}
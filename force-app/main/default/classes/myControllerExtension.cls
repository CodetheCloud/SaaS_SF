public class myControllerExtension {

     private Account acct;
    
    public myControllerExtension(ApexPages.StandardController stdController){
        
        this.acct = (Account) stdController.getRecord();
        
        // perform any activity 
    }
    
    
     public string getGreeting(){
     	
        return 'Welcome ' + acct.Name ;
         
    }
    
}
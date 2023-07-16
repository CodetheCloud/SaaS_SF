public class betaApexVF {

  
    public Account acct;
    
    public betaApexVF(ApexPages.StandardController controller){
        this.acct = (Account) controller.getRecord(); 
        System.debug(acct);
        
    }
    
    public string getGreet(){
        return 'Welcome '+ acct.Name; 
    }
}
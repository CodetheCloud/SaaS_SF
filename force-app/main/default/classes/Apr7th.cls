public class Apr7th {
	
    public Account acRec; 
    public Apr7th(ApexPages.StandardController stdController){
         this.acRec =(Account) stdController.getRecord();
         system.debug(this.acRec);
        //all your apex code. 
    }
    
    public string doSomething(){
        system.debug(this.acRec);
        return 'Welcome '+ this.acRec;
    }
}
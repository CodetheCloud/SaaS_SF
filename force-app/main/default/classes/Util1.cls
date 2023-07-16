public class Util1 implements Queueable {

    
    public Account acc;
    public list<Account> listAc;
    
    public Util1(Account accN, list<Account> listAcc){
        this.acc = accN;
        this.listAc = listAcc;
        
    }
    
		public void execute(QueueableContext context) {
                
              //you can use this as a future method. ++   
            system.debug('my queue code');
            Account ac = new Account();
            ac.Name = 'test';
            insert ac;
            system.debug(this.acc);
            system.debug(this.listAc);
                
                
         }    
}
public class PD2Queue implements Queueable{
    
        public void execute(QueueableContext context) {
                    // your async code
                    // future method
                    // but it is in seperate class with Queueable interface. 
          	list<Account> listAc = [select id, name from account];
            system.debug(listAc);
                    
        }

}
public class Beta22One {
    
    public class MySimpleException extends Exception {
        
    }
    
    public static void doSend(){
        list<Account> listAc = [select id, name, Phone, Industry from Account];
        for(Account ac: listAc){
            
            if(ac.Name == 'D'){
                throw new MySimpleException('You can not have account name with D');
            }
            //custom logic based on the requirement.
        }
        
        update listAc; 
    }

}
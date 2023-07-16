public class GammaFuture {

    @future
    public static void updateAcc(set<Id> setAccID){
        list<Account> listAc = [ select id, name,phone from Account where id in : setAccID ];
        
        for(Account ac : listAc){
            if(ac.phone != null){
                ac.Phone = '+' + ac.phone; 
            }
            
        }
        
        update listAc;
        
        for(Account ac : listAc){
           System.debug(ac.Phone);  
        }
        
    }
    
}
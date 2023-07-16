@isTest
public class GammaFutureTest {
    
    @testSetup
    public static void setup(){
        
        list<Account> listAcc = new list<Account>(); 
        
        for(integer i=1; i<=200; i++){
            Account ac = new Account();
            ac.name = 'test'+i;
            ac.Phone= '976373631'+i;
            listAcc.add(ac);
        }
        
        insert listAcc; 
    }

    @isTest
    public static void test1(){
        
        list<Account> acL = [select id, name, phone from Account]; //5 // mandatory 
        System.debug(acL.size());
        System.debug(acL);
    
    }
}
@isTest
public class TestingUtil2 {

    
        
    
    @isTest
    public static void testing1(){ 
        //code to test a class
        Account ac = new Account(); 
        ac.Name = 'Abc';
        ac.Phone = '2626262626';
        insert ac; 
        Util2.oneFuture(ac, '8763537363');
        
        System.assert(ac.Phone =='8763537363', 'Error phone no is not updated');
        
    }
    
    
    @isTest(SeeAllData=true)	
    public static void test2(){
        list<Account> LA = [select id, name from Account]; 
        System.debug(LA);
        System.debug(LA.size());
        Util2.insertCont(LA);
    }
    

   
    
}
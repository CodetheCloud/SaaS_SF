@isTest
public class BatchJob1TEST {
    
    @testSetup
    public static void setup(){
        
        list<Account> listAc = new list<Account>(); 
        for(integer i=0; i<1000; i++){
            Account ac = new Account();
            ac.name = 'test ac '+ i;
            listAc.add(ac);
        }
        insert listAc;
        
       
        
    }
    
    @isTest
    public static void test(){
       
        
        Test.startTest(); 
        	//Async Apex
        	BatchJob1 obj = new BatchJob1();
            Database.executeBatch(obj); 
        Test.stopTest(); 
        
        // check the assert.
        
    }

}
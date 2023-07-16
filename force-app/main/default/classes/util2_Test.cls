@isTest
public class util2_Test {
    
    @isTest
    public static void Test1(){
        
        Account ac = new account();
        ac.Name = 'test';
        insert ac; 
        
       	Util2.doSOAP(ac.Id);   //different thread - async process 
        
        Test.startTest();
        	Util2.doSOAP(ac.Id);   // future method work as normal method and runs in sync process. 
        	//all asynchronous processes are run synchronously.
        Test.stopTest(); 
        
        
        
    }

}
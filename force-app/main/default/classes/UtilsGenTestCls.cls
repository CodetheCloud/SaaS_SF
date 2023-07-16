@isTest
 class UtilsGenTestCls {

    @isTest
    public static void test1(){
        
        Account ac = new Account(); 
        ac.name = 'test data';
        insert ac; 
        
        
      test.startTest();
         
		UtilsGen.doTask(ac.Id, '0099887766');
	  test.stopTest();
       // by adding start test and stop test we are making sure that all the async method/class will finish before stoptest.
       
        
        Account aca = [select id, name, phone from account where id = : ac.Id];
        system.Assert(aca.Phone == '0099887766', 'Error Message to user');
    }
     
   
 
  
     
}
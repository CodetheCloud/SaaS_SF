@isTest
public class TestCls1 {


    @isTest
    public static void test1(){
        

      //Test.startTest();
        Account ac = new account();
        ac.name ='testAc';
        insert ac;
		ThinkPad.doCon(ac.Id); //call future method
      //test.stopTest();
		
    }
    
 
 
}
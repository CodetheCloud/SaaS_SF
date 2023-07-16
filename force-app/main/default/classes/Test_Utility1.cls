@isTest
public class Test_Utility1 {

    
    //Test Method
    @isTest(SeeAllData=true)
    public static void test1(){
  		
        list<account> listac = [select id, name from account];
        //soql will not give org data in test method / test method transaction
        system.debug(listac);
        system.debug(listac.size());
        
        list<contact> listcon =[select id, lastname from contact];
        system.debug(listcon);
        system.debug(listcon.size());
    }
    
    
}
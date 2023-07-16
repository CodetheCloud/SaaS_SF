@isTest
public class Utility1_Test {
    
   

    @isTest(seeAllData=true)
    public static void test2(){
       
        list<Contact> listCon = [select id, name from contact];
       	system.debug(listCon.size());
        system.debug(listCon);
    }
    
   


    
}
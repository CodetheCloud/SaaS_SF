@isTest
public class SOQLDemo_Test { 
    
  
    
    
    @isTest(seeAllData=true)
    public static void test1(){  
        
        //get the org data. 
        list<account> listac = [select id, name from account];
        system.debug(listac);
        system.debug(listac.size());
        
    }

}
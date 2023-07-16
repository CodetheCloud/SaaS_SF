@isTest
public class MyLogicAccTest {
    
    @TestSetup 
    public static void setup(){
        Account ac = new Account();
        ac.name = 'test';
        ac.Phone = '1231234560';
        insert ac; 
        
        Account ac1 = new Account();
        ac1.name = 'test2';
        ac1.Phone = '1231234433';
        insert ac1; 
    }
    
    
    
    @isTest
    public static void test1(){
        list<Account> listAc = [select id, name, phone from Account]; //2
        
        set<id> setId = new set<id>(); 
        for(Account ac: listAc){
            setId.add(ac.Id);
        }
        
        Test.startTest();
        //async will become sync
        MyLogicAcc.createAccCon(setId); //future  //after some time // 1 sec // seperate thread
        
        list<contact> listcon = [select id, name from contact where accountid in : setId];
        system.debug(listcon);
        system.debug(listcon.size());
        System.assert(listcon.size() == listAc.size(),'not equal contact size error');
        
        Test.stopTest();
        
        
    }
    
    
    
    
}
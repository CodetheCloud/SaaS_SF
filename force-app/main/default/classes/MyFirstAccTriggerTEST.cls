@isTest
public class MyFirstAccTriggerTEST {
    
    @isTest
    public static void test(){
        Account ac = new Account(); 
        ac.Name = 'test';
        ac.phone = '9484948493';
        insert ac; // before insert and after insert
        
        Contact con = new Contact();
        con.AccountId = ac.Id;
        con.LastName = 'testcon';
        insert con; 
        
        list<contact> con1 = [select id,name from contact];
        system.debug(con1);  //1
        system.debug(con1.size());  //1
        
        ac.name = 'dhgj';
        update ac;  //before update and after update
        
        list<contact> con2 = [select id,name from contact];
        system.debug(con2);  //0
        system.debug(con2.size());  //0
        System.assert(con2.size()==0, 'con is not getting deleted in After Update trigger');
    }   

}
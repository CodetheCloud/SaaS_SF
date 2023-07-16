@isTest
public class DemoSOQLTesting {

	@isTest
    public static void test1(){
        
        Account ac = new Account();
        ac.Name = 'test';
        ac.Phone = '8488484849';
        insert ac; 
        
        
        DemoSOQL.UpdateAcPhone('9999999999', ac.Id);
        
        Account ac1 = [select id, name, Phone from account where id = : ac.Id];
        System.assert(ac1.Phone=='9999999999', 'Phone numbe not matching');
    }
}
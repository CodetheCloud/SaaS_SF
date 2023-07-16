@isTest
public class testDemo1 {

	@isTest
    public static void test1(){
       
 		Account ac = new Account();
        ac.Name ='Dell';
        ac.Description = 'some text';
        insert ac; //due the before insert trigger -> nullify the description //1 DMl
        
        Account res = [select id, name, Description from Account where id = : ac.Id]; //1 SOQL
        system.assert(res.Description == null, 'not good');
        
        
        //100 SOQL
        //150 DML

		        
    }
    
}
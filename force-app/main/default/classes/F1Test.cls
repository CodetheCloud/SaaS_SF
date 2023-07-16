@isTest
public class F1Test {


    @isTest
    static void doTest(){
      list<Account> res =  [select id, name from account];
      system.debug(res);
        list<Account> listAcres = DemoSOQL.dynamicSOQL('id, name', '5');
        system.debug(listAcres);
    }
    
}
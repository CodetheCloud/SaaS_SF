public class AccountService {

    @AuraEnabled
    public static List<Account> getAccounts(String strAccountName) {
        system.debug('calling getaccounts method from lwc');
      String strKey = '%'+strAccountName+'%';
       List<Account> accList = [SELECT Id,Name,AccountNumber FROM Account WHERE name like :strKey ];
       return accList;
     }
}
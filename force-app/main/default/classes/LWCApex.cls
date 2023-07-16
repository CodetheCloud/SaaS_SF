public class LWCApex {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(){
        List<Account> listAc = [select id, name, Phone, Sic from Account limit 15];
        return listAc; 
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String key){
        system.debug(key);
        string sKey =  '%' + key + '%' ; 
        list<Account> listAc = [select id, name from Account where name like : sKey];
        return listAc; 
    }


}
public class MyGenUtils {

    public static void dynamicSOQL(string param1, integer limitRec){
        string strSOQL = 'select' + param1 + ' from account limit '+ limitRec ;  //create this string dynamically based on method param.
        system.debug('this soql should be valid query = '+ strSOQL);
        list<Account> listAc = Database.Query(strSOQL);
        system.debug(listAc.size());
        system.debug(listAc);
    }
}
public class soslfind {

    public static void doSOSL(string strP){
        
        
        string soslstr = 'Find \' '+ strP  +' \' in all fields returning account(name, phone)';
        system.debug('out slsl query = '+ soslstr);
        list<list<sobject>> listRes = search.query(soslstr);
        system.debug('listRes = '+ listRes);
        system.debug(listRes[0]);
        //system.debug(listRes[1]); //it will give null -> and i perform any operation on this -> Run Time error -> NPE
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    public static list<list<sObject>> searchData(string str)
    {
        
        string myQuery = 'FIND \'' + str +'\' IN All FIELDS  RETURNING Account(id,name,phone), Contact(id,name,Lastname), Lead(id)';
        
        List<List<sObject>> searchList = search.query(myQuery);  //dynamic sosl
        
        system.debug(searchList);
        
        list<account> listac = (list<account>) searchList[0];
       list<contact> listcon =(list<contact>) searchList[1];
       list<lead> listlead = (list<lead>) searchList[2];
       system.debug(listac);
       system.debug(listcon);
       system.debug(listlead);
        
        return searchList;
  
    }
    
}
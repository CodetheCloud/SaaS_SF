public class AnyClassName {

    
    public static void doMain(){
       
     
  		
		list<list<sObject>> varName = [FIND 'good' IN ALL FIELDS RETURNING Account(name, phone), Contact (LastName),Book__c(Name)];
        //list<sObject> listAc = [select id, name from account];
        //list<sObject> listCon = [select id, name from Contact];
        // update last name of all the contact record. -> demo. 
        system.debug(varName);
        
    }
    
}
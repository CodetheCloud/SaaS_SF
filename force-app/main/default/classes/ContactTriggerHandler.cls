public class ContactTriggerHandler {

    public static void beforeInsert(list<contact> listcon){
        
       list<contact> conL = listcon; 
        
        system.debug(listcon);
        
       for(Contact con : listcon){
           if(con.FirstName != null) {  //best practice 
                if(con.FirstName.contains('Ayten') ){
                //System.NullPointerException: Attempt to de-reference a null object Trigger.ContactTrigger: line 5, column 1
                con.phone = '0987656789';
           		 }
           }
           
        
    	}
        
    }
}
public class UtilsImp {

    public static void createData(){
        if( MDIUtils.isCalled == true ){
            return; 
        }
        system.debug('Creating Data 1');
        updateDate();
        
    }
    public static void updateDate(){
        
       MDIUtils.isCalled = true; 
       system.debug('Updating the record ');
       system.debug('sending an email');
       createData();
          
    }
}
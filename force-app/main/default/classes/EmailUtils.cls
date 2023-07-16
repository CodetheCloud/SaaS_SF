public class EmailUtils {

    public static void sendEmail(){
        system.debug('1'); //fine
        try{
            Account ac = new account();
            insert ac;
            system.debug('2');  //no
             
        }
        Catch(DmlException ex){
            system.debug('dml error'); //fine
        }
        finally{
            system.debug('it will always run');
        }
        system.debug('3'); //fine
        system.debug('4'); //fine
           
    }
}
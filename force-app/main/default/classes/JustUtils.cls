public class JustUtils {

    public static void Test1(){
        try{
            list<string> listStr = new list<String>();
            string str; 
            system.debug(str); 
            listStr.add('abc');
            system.debug(listStr[0]);
            system.debug(listStr[1]);//exception
        }
        catch(Exception obj){ 
            system.debug(obj);
            //send an email
            //create a record in exceptio
        }
       
    }
}
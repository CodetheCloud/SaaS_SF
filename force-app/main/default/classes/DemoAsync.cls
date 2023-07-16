public class DemoAsync {

    public class TooOldException extends Exception {
        //now Exception class is available here to use directly. 
    }
    
        
  
    public static void doCall(){
        system.debug('1');
        system.debug('2');
        integer age = 100;
        try{
           if(age>99){
            	throw new TooOldException('age is too much');
        	} 
        }catch(TooOldException ex){
            system.debug(ex);
        }
            
        
        system.debug('3');
        system.debug('4');
    }
    
}
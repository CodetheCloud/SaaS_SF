public class Car {
	
   //Instance Variable  - we can access the IV in all the methods
   public String name; 
   public String color;
   public integer engine; 
    
    public Car(String c1, String n2, integer i){
        //System.debug('My Constructor');
        //System.debug(c1); //color
        //System.debug(n2);  //name
        color = c1;
        name = n2;
		engine = i;
		        
        
    } 
    
    //Method
    Public void run(){
        String size;
        System.debug('Running');
        System.debug(name + '  ' + color);  //iv
    }
    
    public void stop(){
        System.debug('Stop' );
        System.debug('Enigne ' + engine);
    }
          
}
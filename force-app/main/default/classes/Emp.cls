public class Emp {

    String name;  
    Boolean isActive;
    integer age;
    integer height;
    integer weight;  //instance variable 
    static string country;   // this is not instance variablbe
    //this is static variable. 

    public Emp(String name , boolean isActive, integer age, integer height, integer weight, string c){
		country = c;        
        this.name  = name;
        this.isActive = isActive;
    	this.age = age;
        this.height = height;
        this.weight = weight;
        system.debug('Constructor invoked');
    }
    
    // Creating Method
    public void details(){
        system.debug(country);
        system.debug(name);
        
    }
  
    
    public static void sendEmail(){
        System.debug('sending email from '+ country);
    }
    
    
}
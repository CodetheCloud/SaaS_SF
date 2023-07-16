public class CarObject {

   //property and functionality
   //variable and method
   
    public string carName;
    public string color;
    public string weight; 
    public string model; 
    public string hp; 
 
    //constructor 
    public CarObject(string cn, string col, string we, string mo, string h ){
        system.debug('constructor called');
        this.carName = cn;  //using this we can refere to class variale. 
        this.color = col;  
        this.weight = we; 
        this.model = mo;
        this.hp = h;
    }
    
    public void doStart(){
        //peform some activity and do not return any thing 
        system.debug('staring the car = '+ this.carName);
    }
    
    public static integer doAddd(integer a, integer b){
        integer res = a+b;
        return res; 
    }
    
    public void playMusic(){
        
    }
    
    public void stopMusic(){
        
    }
    
     
   
}
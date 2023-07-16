public class GenericCar {

    
    //To Define attribute and function. 
    
    //Methods/function --function
    //Instance Variable  --attribute/properties
    
    //Sokoda S6 ->  Object 
    //constructor 
    public GenericCar(string color, string model, double height, double wight, integer power, double mileage){
        this.color = color;
        this.model = model;
        this.height = height;
        this.wight = wight;
        this.power = power;
        this.mileage = mileage;
    }
    
    public static string CompanyName = 'DON';  //static var
    
    public static void callCompany(){
        system.debug('calling company  = '+ CompanyName);
    }
    
    public string color;  //non static variable 
    public string model;
    public double height;
    public double wight;
    public integer power;
    public double mileage; 
    
    public void doStart(){  //return type of method  //non static method
        system.debug('starting the car  ' + this.model);
       
    }

    public void doStop(){
		system.debug('stoping the car '  + this.model);        
    }    
    
    public void playMusic(){
        system.debug('playing the music '  + this.model);
    }
    
    public void stopMusic(){
        system.debug('stoping the music '  + this.model);
    }
    
    public void doReverse(){
        system.debug('reverse the car ' + this.model);
    }
    
    public void Accelerate(){
        system.debug('Accelerate the car '  + this.model);
        
    }

    
    
    
    
}
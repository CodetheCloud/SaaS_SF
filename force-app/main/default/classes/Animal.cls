public class Animal {
    
	//Instace Variable
	public string name; 
    public string color; 
    public string height; 
    public string weight;
    public integer age; 
    public boolean isWild;
    
    //Constructor
    public Animal(string n,string c ,string h, string w, integer a, boolean isWild){
        //set the value of instance variable from constructor parameter. 
    name = n;
    color = c;
    height = h;
    weight = w; 
    this.age = a; //we use this keyword to refer the instance variable 
    this.isWild = isWild;
    }
    
    
    public void run(){
        system.debug(this.name +' is running');	
        		       
    }
    
    public void stop(){
        system.debug(this.name +' stopped');	
    }
     
    public boolean isAnimalWild(){
        system.debug(this.name + ' is ' + this.isWild);
        
        return this.isWild;
    }
    
}
public class Cat {
    
    public string name;
    public string color; 
    public string voice; 
    
    public Cat(string v1){
        color = v1;
        
    }
    
    public void talk(){
        system.debug(name  + ' is talking ');
    }

}
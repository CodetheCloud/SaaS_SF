public class Bike{
    
   public String name;
   public string color;
   public Integer weight;
    
    public Bike( String n, String c, Integer w){
       
        name= n;
        color=c;
        weight = w; 
    }
    public void start(){
        system.debug('start');
        system.debug(name + ' ');
    }
    public void stop(){
        system.debug('stop');
        system.debug(name + ' ');   
    }
    
     public void weight(){
         String abc  = 'DreamIT Academy';
         
        system.debug('weight');
        system.debug(name + ' ');   
        system.debug(abc);
     }
    
}
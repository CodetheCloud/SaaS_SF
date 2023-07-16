public class Home {

    //instance variable   (to store the characteristics of Object/ to store the data)
    //meethod   (to define the functionality of object)
    
    public String color;  //IV - Instance varibale 
    public String name;  
  
    public Home(String v1, String v2){
        color = v1; 
        name = v2;
    }
    public void details(){
        //code to provide the details of the home. 
        System.debug('Home Details');
        System.debug('Name = '+ name);  //IV
        System.debug('color = '+ color);  //IV
    }
   
    public void playingMusic(){
        //code to play music in home
        System.debug('Playing music');
    }
    
    public void switchOnLights(){
        //code to switch on the light
         System.debug('switchOnLights'); 
    }
    
    public void switchOffLights(){
        //code to switch off the light
         System.debug('switchOffLights');
    }
    
    
    
    
}
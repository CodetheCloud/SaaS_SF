public class ComputerCls {
    
	//Instance Variable 
	public string name;
    public integer ram;
    public string color;
    public integer hdd;
    public boolean isWindows;
    public string processorSpeed;
    
    //Constructor
    
    public ComputerCls(){
        this.name = 'demo comp';
            
    }
    
    public ComputerCls(string name, string color){
        this.name = name;
        this.color = color;
    }
    
    public ComputerCls(string name, integer ram, string color, integer hdd, boolean isWindows, string processorSpeed){
        this.name = name;
        this.ram = ram;
        this.color = color;
        this.hdd = hdd;
        this.isWindows = isWindows;
        this.processorSpeed = processorSpeed;
    }
    
    
    
    //Method - to provide functionality of an object. 
    public void doStart(){
        //perform some task. 
        system.debug('staring computer = ' + this.name );
    }

	public void doShutDown(){
        system.debug('shutting down computer = ' + this.name);
    }
    
    public void openStartMenu(){
        system.debug('open start menu '  + this.name);
    }
    
    public boolean doSleep(){
        system.debug('sleeping the computer '+ this.name);
        return true;
    }
    
	
	    
        
    
}
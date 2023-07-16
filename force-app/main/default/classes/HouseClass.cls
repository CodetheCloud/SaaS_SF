public class HouseClass {

    //house -> property/attribute and Functioanlity. 
    
    public string name;
    public string color;
    public integer noofRooms;
    public integer noofRestRooms;
    
    //default constructor
    public HouseClass(){
        this.name = 'a1';
       
        this.color = 'white';
        this.noofRooms = 100;
        this.noofRestRooms = 10;

    }
    //constructor // same name as class name 
    public HouseClass(string hname, string color, integer noofRooms, integer noofRestRooms){
        this.name = hname;
        this.color = color;
        this.noofRooms = noofRooms;
        this.noofRestRooms = noofRestRooms;
    }
	
    //method, function -> to ring the bell
    public void ringDoorBell(){
        system.debug('ring the door bell '+ this.name);
        
        
    }
    
    public string switchAC(){
        system.debug('switch on the ac '+ this.name);
        return 'it is on';
    }
    
    
}
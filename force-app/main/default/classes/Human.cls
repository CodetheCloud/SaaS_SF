public class Human {
    
    
    //Instance variable  (For characteristics)
    String name;
    integer age;
    
    
    //Constructor
    //It's a block where name is exactly same as class name but having NO return type
    public Human(String name, integer age){
        //it will take input parameter and assingn the value to instance variable
        System.debug('Const running');
        System.debug(name);
        System.debug(age);
        this.name = name;
        this.age = age; 
    }
    
    //Method (For Functionality)
    public void run(){
        System.debug(name + ' is running ');
    }
    
    

}
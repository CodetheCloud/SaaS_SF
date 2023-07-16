public class Calculator {

    //Instance Variable 
    integer num1; 
    integer num2; 
    
    public Calculator(integer a1, integer a2){
        num1 = a1; 
        num2 = a2; 
    }
    
    
    //Method
    public void add(){
        System.debug(num1 + num2);
    }
    
    public void sub(){
        System.debug(num1 - num2);
    }
    
}
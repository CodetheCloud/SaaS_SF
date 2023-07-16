public class CustLogicVF2 {

   public integer num1 {get; set;} 
    public integer num2 {get; set;} 
    public integer num3 {get; set;} 
    public double si {get; set;}
    
    public void functionWork1(){
        system.debug('this is funcitonwork1');
        system.debug('Number 1: '+ num1);     
        system.debug('Number 2: '+ num2);
        system.debug('Number 3: '+ num3);
        si = (num1* num2* num3) /100;
        
    }
    
}
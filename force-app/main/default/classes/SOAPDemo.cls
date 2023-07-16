public class SOAPDemo {

    public static void getCalc(){
        //SOAP Callout.
        Maha.CalculatorSoap obj = new Maha.CalculatorSoap();
        
        Integer num1 = 100;
        Integer num2 = 500;
        
        Integer added = obj.Add(num1, num2);
        system.debug(added);
        
        
    }
    
}
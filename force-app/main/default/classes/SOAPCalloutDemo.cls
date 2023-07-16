public class SOAPCalloutDemo {

    //we will connect with external system using soap api
    public static void checkCallout(){
        SOAPDemoCallout.CalculatorSoap obj = new SOAPDemoCallout.CalculatorSoap();
        
        Integer res = obj.Add(5, 6);
        system.debug(res);
        
        Integer res1 = obj.Subtract(6, 5);
        system.debug(res1);
    }
    
}
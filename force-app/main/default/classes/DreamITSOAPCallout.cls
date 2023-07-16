public class DreamITSOAPCallout {
    
    public static void SOAPCall(){
        
        
        // SOAP Callout
        DreamITSOAP.CalculatorSoap obj1 = new DreamITSOAP.CalculatorSoap();  //Create an object 
        
        integer intA = 50; 
        integer intB = 15;
        integer r1 = obj1.Add(intA, intB);
        integer r2 =obj1.Subtract(intA, intB);
        integer r3 =obj1.Multiply(intA, intB);
        integer r4 =obj1.Divide(intA, intB);
        
        system.debug(r1);
        system.debug(r2);
        system.debug(r3);
        system.debug(r4);
        
        
    }

}
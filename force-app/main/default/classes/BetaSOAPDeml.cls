public class BetaSOAPDeml {

    public static void soapCall(){
        
        Beta22SOAP.CalculatorSoap objN = new Beta22SOAP.CalculatorSoap();
        integer addRes = objN.Add(5,1);
        integer mulRes = objN.Multiply(5,2);
        integer divRes = objN.Divide(5,50);
        system.debug(addRes);
        system.debug(mulRes);
        system.debug(divRes);
        //remote site setting = http://www.dneonline.com/calculator.asmx
        
    }
}
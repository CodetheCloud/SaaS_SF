public class ApexClass1 {

    
    public string str1 {get; set;}  //- set means setter - used to set the value in variable. 
	public string name {get; set;}
    public string phone {get; set;}

    
    public void functionWork1(){
        
        
        try{
               Account ac = [select id, name, phone from account where id = : str1];
               name = ac.name;
               phone = ac.phone;
        }catch(exception e){
              ApexPages.Message m1 = new ApexPages.Message(apexpages.Severity.confirm , 'is Blank' );
        	  ApexPages.addmessage(m1); 
        }


        
    }
}
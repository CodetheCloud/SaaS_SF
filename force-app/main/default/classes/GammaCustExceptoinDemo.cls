public class GammaCustExceptoinDemo {

    public class MyConLastNameException extends Exception{
        //create a sub class/nested class, and make sure the class ends with Exception keyword
        //extends Exception
    }
    
     public static void doTask1(){
        //if contact last name contains 'donald' throw the exception.
        Contact con = new Contact();
        con.lastName = 'donald';
        con.Phone = '76539376252';
         con.address__c = '567';
         
         try{
             
             insert con; 
         
             if(con.LastName.contains('donald')){
                 throw new MyConLastNameException('You can not have Donald as Last Name in contact');
                 //GammaCustExceptoinDemo.MyConLastNameException: You can not have Donald as Last Name in contact
             }
             
         }
         Catch(GammaCustExceptoinDemo.MyConLastNameException ex){
             System.debug(ex);
         }
        
    }
    
}
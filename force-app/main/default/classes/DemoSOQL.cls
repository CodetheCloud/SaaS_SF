public class DemoSOQL {
    
    
    public static void UpdateAcPhone (string Phone, Id acId){
      
        Account ac = new Account(); 
        ac.Id = acId;
        ac.Phone = Phone;
        Update ac;
        
    }

}
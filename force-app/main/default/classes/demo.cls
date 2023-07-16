public class demo {
    
    @AuraEnabled(cacheable=true) 
    public static void callApex(){
        system.debug('apex method called from LWC');
        //if you want to read the data from this method
        //if you are not performing any Record update. 
    }
}
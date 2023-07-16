public class GlobalFuture {

    @future(callout=true)
    public static void verifyphone(set<id> acID){
            
        system.debug('param acid = '+ acID);
        list<Account> listac = new list<Account>();
        list<Account> acListToUpdate  = [select id, name, phone, Description, Phone_Details__c from Account where id in : acID ] ;
        
        for(Account arec: acListToUpdate){
           MyRestIntegration.wrapclass wrapResult =  MyRestIntegration.doMainCheck(arec.phone, 'IN');  //REST Callout  
            system.debug('debug ======'+wrapResult );
           //arec.Phone_Details__c = wrapResult.carrier + ' ++  '+ wrapResult.country_code + ' ++  '+ wrapResult.country_name + ' ++ '+ wrapResult.location ;
           arec.Description = wrapResult.carrier + ' ++  '+ wrapResult.country_code + ' ++  '+ wrapResult.country_name + '  ++ '+ wrapResult.location ; 
           
        }
        
        if(acListToUpdate.size()>0){
            update acListToUpdate;
        } 
    }
    
}
public class ConTriggerHandler {
    

    public static void sendEmailtoConOwner(List<Contact> con, Map <Id, Contact> oMap){
        
        
        list<user> liUser = [select id,email from user];
        map<id,string> mapuEmail = new map<id,string>();
        
        
        for(user u : liUser){
            mapuEmail.put(u.Id, u.Email);
            
		}
        
        List <Messaging.SingleEmailMessage> emailList = new List <Messaging.SingleEmailMessage>();
        
        for(Contact c : con){
            
            Contact oldRec=oMap.get(c.Id);
            if(c.Phone != oldRec.Phone){
                //phone number is changed.
                //send an email to c.OwnerId
                Messaging.SingleEmailMessage alert = new Messaging.SingleEmailMessage();
                String semail = mapuEmail.get(c.OwnerId);
                alert.setToAddresses(new String[] {semail});
                alert.setSubject('Sending email to test');
                alert.setPlainTextBody('Your phone number has been successfyllu changed! for '+ c.LastName);
                emailList.add(alert);
            }
            
            
        }
        
        
        Messaging.sendEmail(emailList);
        
        
    }

}
global class MySOAPWebServices {
    
    webservice static ID createContact(string lastName, Account a){
        
        Contact c = new Contact();
        c.lastName = lastName;
        c.AccountId = a.Id;
        insert c;
        return c.Id;
        
        
    }

}
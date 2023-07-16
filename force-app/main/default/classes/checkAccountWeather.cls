global class checkAccountWeather {
    
    webservice static Account getAccount(Id accId){
        Account ac = [select id, name from Account where id = : accId];
        return ac; 
    }

}
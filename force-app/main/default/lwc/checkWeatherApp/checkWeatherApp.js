import { LightningElement, track } from 'lwc';

export default class CheckWeatherApp extends LightningElement {


    @track city; 

    @track temp; 
    @track feelLike; 
    @track min; 
    @track max; 
    @track pressure; 
    @track humidity; 
    @track country; 
    @track sRise; 
    @track sSet; 

    @track tz; 
    @track n1; 

    @track showMessage = false; 

    handleChange(event){
        this.city = event.target.value; 
        console.log(this.city);
    }

    handleSubmit(){
        console.log(this.city);
        console.log('api call to check the weather of '+ this.city);


        // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
        // https://openweathermap.org/current

        let endpoint = 'https://api.openweathermap.org/data/2.5/weather?q='+ this.city + '&appid=8e4695513f399abae058884ef6beb0f4'
        
        fetch(endpoint , {method: "GET"}).then(response => response.json()).then(data => {

            console.log('the response data');
            console.log(data);

            this.temp = data.main.temp; 
            this.feelLike = data.main.feels_like; 
            this.min = data.main.temp_min; 
            this.max = data.main.temp_max; 
            this.pressure = data.main.pressure; 
            this.humidity = data.main.humidity; 
            this.country = data.sys.country; 
            this.sRise = data.sys.sunrise; 
            this.sSet = data.sys.sunset; 
            this.tz = data.timezone; 
            this.n1 = data.name; 


            this.showMessage = true; 
        });


       

    }
}
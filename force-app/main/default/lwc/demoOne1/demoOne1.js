import { LightningElement , track} from 'lwc';

export default class DemoOne1 extends LightningElement {

    @track base; 
    @track humidity; 
    @track min; 
    @track max; 
    @track pressure; 
    @track wind; 
    @track status;

    city = ''; 

    showMessage = false; 

    loadingSpinner = false; 

    handleChange(event){
        console.log(event.target.value);
        this.city = event.target.value; 
    }


    handleSubmit(){
        this.loadingSpinner = true;
        console.log('Handle Submit');
        console.log('city  Submit ' + this.city);

        let endpoint = 'https://api.openweathermap.org/data/2.5/weather?q='+ this.city + '&appid=8e4695513f399abae058884ef6beb0f4';

        fetch(endpoint, {method: "GET"
        }).then(response => response.json())
        .then(data => {
            console.log('Handle Callout');
            console.log(data);
            console.log('=====');

            console.log(data.base);
            console.log(data.main.humidity);

            console.log('=====');
            this.base = data.base;
            this.humidity  = data.main.humidity;
            this.min  = data.main.temp_min; 
            this.max  = data.main.temp_max; 
            this.pressure = data.main.pressure; 
            this.wind = data.wind.speed; 
            this.loadingSpinner = false; 
            this.showMessage = true; 
        });


    }


}
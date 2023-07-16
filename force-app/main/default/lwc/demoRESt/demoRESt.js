import { LightningElement } from 'lwc';

export default class DemoRESt extends LightningElement {

    myRes; 
    showRes = false; 
    
    handleREST(){
        const url = 'http://api.openweathermap.org/data/2.5/weather?appid=8e4695513f399abae058884ef6beb0f4&q=Chennai';
        console.log(url);

        fetch(url, {method:"GET"} )
        .then((response) => response.json() )
        .then((data) => { 
              console.log(data)
              this.myRes = JSON.stringify(data)
              console.log(this.myRes);
              this.showRes = true; 
         } );
    }
}
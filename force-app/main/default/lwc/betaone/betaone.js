import { LightningElement } from 'lwc';

export default class Betaone extends LightningElement {

    //properties
    // javasscript variable
    name = 'DreamIT Academy';
    city = '';
    country = '';
    email = ''; 

    //Javascript Method
    handleRun(event){

        if(event.target.name == 'n1'){
            this.name = event.target.value; 
        }

        if(event.target.name == 'c1'){
            this.city = event.target.value; 
        }

        if(event.target.name == 'c2'){
            this.country = event.target.value; 
        }

        if(event.target.name == 'e1'){
            this.email = event.target.value; 
        }
        
        
       
        console.log(event.target.value);
        
    }

}
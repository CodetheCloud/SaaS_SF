import { LightningElement } from 'lwc';
import abc from '@salesforce/resourceUrl/mountain_Anna';

export default class GammaWc2 extends LightningElement {

 

    name = 'DIA';
    age = 55;
    city = "NYC";
    showIt = false;

    imageURL = abc; 


    check(){
        if(this.showIt){
            this.showIt = false;
            console.log(this.name);
        }else{
            this.showIt = true;
        }
        
    }
    abc(){
         console.log("Input Detected");
        console.log(event.target.value);
        console.log(event.target.label);
    }
    
}
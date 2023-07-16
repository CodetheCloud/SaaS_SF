import { LightningElement } from 'lwc';
import usmountain from '@salesforce/resourceUrl/usmountain';
export default class BetaAccountComp extends LightningElement {


    myFirstImageLink = usmountain;
    value = true; 


    show(){
        this.value = true; 
    }

    hide(){
        this.value = false; 
    }
}
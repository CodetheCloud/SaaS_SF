import { LightningElement } from 'lwc';

export default class BmiCalc extends LightningElement {


    weight = 0 ; 
    height = 0 ; 
    BMI = 0; 
    showSpinner = false; 

    handleOne(event){
        this.weight = event.target.value; 
    }

    handleTwo(event){
        this.height = event.target.value; 
    }

    handleClick(){
        console.log("Calculate BMI Method");
        console.log(this.weight);
        console.log(this.height);
        this.showSpinner = true; 
        this.BMI  = this.weight / (this.height / 100) *  (this.height / 100) ; 
        this.showSpinner = false; 

    }


    handleRemove(){

        this.weight = 0; 
        this.height = 0; 
        this.BMI = null; 
    }

}
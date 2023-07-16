import { LightningElement } from 'lwc';
import Id from '@salesforce/user/Id'; 
export default class BetaLwcOne extends LightningElement {
    
    p = 0 ; 
    r = 0 ; 
    t = 0 ; 
    res = 0 ; 

    currUserId = Id; 

    renderedCallback(){
        let a = 'Hello';
        console.log(a + ' renderedCallback in BetaLWC Child ONE');
    }
    

    getPrincipal(event){
        this.p = event.target.value; 
    }

    getRate(event){
        this.r = event.target.value; 
    }

    getTimePeriod(event){
        this.t = event.target.value; 
    }

    calc(){
        this.res = (this.p * this.r * this.t) /100; 
    } 

}
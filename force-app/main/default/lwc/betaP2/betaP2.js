import { api, LightningElement } from 'lwc';
import betaChild from './betaChild.html'; 
export default class BetaP2 extends LightningElement {




 

    connectedCallback(){

        let a1 = this.template; 
        console.log(a1.isConnected);

        let a = 'Hello';
        console.log(a + ' ConnectedCallback');
    }

   
    constructor(){
        super(); 
        let a = 'Hello';
        console.log(a + ' Constructor');
        
    }

    renderedCallback(){
        let a = 'Hello';
        console.log(a + ' renderedCallback in Beta P2 Parent');
    }
    

}
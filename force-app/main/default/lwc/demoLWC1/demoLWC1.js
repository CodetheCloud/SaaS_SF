import { LightningElement,api } from 'lwc';


export default class DemoLWC1 extends LightningElement {
   
    @api percentage;

    get style() {
        return `width: ${this.percentage}%`;
    }
   
}
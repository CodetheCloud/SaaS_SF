import { LightningElement } from 'lwc';

export default class AytenSalesforce extends LightningElement {

    constructor() {
        super();  // The first statement must be super() with no parameters.
        console.log('Contructor ayten');
        //Don’t use a return statement inside the constructor body,
        //we can not use any js property/variable in this method. 
        //Don’t inspect the element's attributes and children, because they don’t exist yet.
        //Don’t inspect the element’s public properties, because they’re set after the component is created.
    }


    ConnectedCallback(){
        console.log('connected callback ayten');
        //The flow of this method is from the parent component to the child component.
        // when you call the child from the parent - in parent we can have connected callback.
        // In this method we can call the apex method which requires the public properties as a parameter as of now public properties are in existence.
    }

    renderedCallback(){
        console.log('Rendered Callback ayten');
    }
}
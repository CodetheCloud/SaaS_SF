import { LightningElement,track } from 'lwc';

export default class LwcFetch extends LightningElement {


    @track result; 
    @track status;

    showMessage = false; 

    loadingSpinner = false; 

    handleSubmit(){
        this.loadingSpinner = true;
        console.log('Handle Submit');

        fetch('https://dog.ceo/api/breeds/image/random', {method: "GET"
        }).then(response => response.json())
        .then(data => {
            console.log('Handle Callout');
            console.log(data);
            this.result = data.message;
            this.status  = data.status;
            this.loadingSpinner = false; 
            this.showMessage = true; 
        });


    }


}
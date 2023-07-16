import { LightningElement } from 'lwc';

export default class LwcCallout extends LightningElement {


    url;
    status;
    showMessage;


    run(){
        console.log('OK RUN');

        fetch('https://dog.ceo/api/breeds/image/random' , {method: "GET"} ).then(response => response.json() ).then(data => {

            console.log(data);
            console.log(data.message);
            console.log(data.status);
            this.url = data.message;
            this.status = data.status;
            this.showMessage = true;
        
        
        });



        //fetch api to perform the callout

    }
}
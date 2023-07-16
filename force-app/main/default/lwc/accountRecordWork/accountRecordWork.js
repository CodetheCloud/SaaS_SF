import { LightningElement } from 'lwc';
export default class AccountRecordWork extends LightningElement {

  imageReady = false;
    loadingSpinner = false;
    pictureUrl;
    handleClick(){
        this.loadingSpinner = true;
        this.imageReady = false;
        fetch('https://dog.ceo/api/breeds/image/random', {method: "GET"
        })
            .then(response => response.json())
            .then(data => {
                this.pictureUrl = data.message;
                this.imageReady = true;
                this.loadingSpinner = false;
            });
    }

    
  
}
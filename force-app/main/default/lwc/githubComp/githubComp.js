import { LightningElement, api } from 'lwc';
import getGithubUserName from '@salesforce/apex/betaApex.getGithubUserName';
export default class GithubComp extends LightningElement {


    @api recordId; 

    username;
    user = {};

    get userPopulated() {
        return this.user && this.user.id;
    }

    get githubURL() {
        return 'https://www.github.com/' + this.username;
    }

  

    connectedCallback(){
        console.log('connectedCallback = '+ this.recordId);
        getGithubUserName( {acId : this.recordId}   ).then( result => {
            this.username = result;
            console.log('we got the data = '+ this.username);
            
             
            if(this.username) {
                this.user = {};
                fetch('https://api.github.com/users/' + this.username)
                .then(response => {
                    console.log(response);
                    if(response.ok) {
                        return response.json();
                    } else {
                        throw Error(response);
                    }
                })
                .then(githubUser => {
                    console.log(githubUser);
                    console.log('We are fine here');
                    
                    this.user = {
                        id: githubUser.id,
                        name: githubUser.name,
                        image: githubUser.avatar_url,
                        blog: githubUser.blog,
                        about: githubUser.bio,
                        repos: githubUser.public_repos,
                        gists: githubUser.public_gists,
                        followers: githubUser.followers
                    };

                    console.log(this.user);
                })
                .catch(error => console.log(error))
            } else {
                alert('Please specify a username');
            }


            //end of logic
        
        } ).catch(error => {this.errs = error} )


    }

  

}
import { LightningElement,track } from 'lwc';

const QUERY_STRING ='https://api.github.com/search/users?q=';
export default class ProfileSearch extends LightningElement {

  //  userName='';
   @track users;
    handleInputChange(event){
       
        fetch(QUERY_STRING+event.target.value)
        .then(response=>{
            console.log('response v'+response.json());
            this.users = response.json();
        })
        .catch(error=>{
            console.log('error v'+error);
            this.users=error;
            this.users=undefined;
        })
    }

}
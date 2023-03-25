import { LightningElement,wire,track,api } from 'lwc';
import contactList from '@salesforce/apex/FetchRelatedContacts.getContacts';
export default class CallingApexMethodLWC extends LightningElement {

    @api contactRecords;
    nameOfAccount='';
    
  // @wire(contactList) contactRecords;
  checkVal(event){
    this.nameOf = event.target.value;
  }
  get nameOf(){
    return this.nameOfAccount;
    console.log('in getter');
  }

  set nameOf(value){
    this.nameOfAccount = value;
    console.log('in setter');
  }
   
    handleClick(){
        contactList()
        .then(result => {
            console.log('ganesh result' +JSON.stringify(result));
            this.contactRecords = JSON.stringify(result);
        })
        .catch(error => {
            console.log('ganesh catch' +error);
        })
    }

}
import { LightningElement,track, wire } from 'lwc';
import getContactsLists from '@salesforce/apex/FetchRelatedContacts.getContacts';

export default class DisplayRelatedContacts extends LightningElement {

  
    /*
     contacts =[
        {
            Id : '01',
            FirstName : 'Ganesh',
            LastName : 'Kholi'
        },
        {
            Id : '02',
            FirstName : 'Virat',
            LastName : 'Kholi'
        }
    ];*/
    @wire(getContactsLists)
    contacts;
    
    
    greeting = 'World';
    changeHandler(event){
        this.greeting = event.target.value;
        
    }
    
}
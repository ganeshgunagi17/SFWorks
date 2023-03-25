import { LightningElement,track } from 'lwc';
import getProducts from '@salesforce/apex/WarehouseControllerApex.getProducts';

export default class SearchPageLWC extends LightningElement {
    @track records;
    handleChange(event){
        console.log('event.handlechange'+event.target.value);
    getProducts({productname: event.target.value})
    .then(result=>{
        console.log('results'+result);
        this.records = result;
    })
    .catch(error=>{
        console.log('error'+result);
        this.error=error;
        this.records = null;
    })
    }
}
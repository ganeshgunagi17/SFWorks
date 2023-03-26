import { LightningElement,wire,api,track } from 'lwc';
import { registerListener,unregisterAllListeners } from 'c/pubsub';
import {CurrentPageReference} from 'lightning/navigation';

const columns = [
    {label:'Food', type:'text',fieldName :'FoodName'},
    { label:'Quantity', type:'text',fieldName:'Quantity'},
    { label:'Protein', type:'text',fieldName:'Protein'},
    { label:'Carbs', type:'text',fieldName:'Carbs'},
];

const data = [
    {
        FoodName :'Egg',
        Quantity:'200 gm',
        Protein : '40 gm',
        Carbs : '20 gm'
    },
    {
        FoodName :'Chicken',
        Quantity:'200 gm',
        Protein : '60 gm',
        Carbs : '20 gm'
    }
];
export default class BmiDietLWC extends LightningElement {
    @wire(CurrentPageReference) pageRef;
    @api calories;
    bmival;
    currentStep='1';
    stepone=true;
    value='';
    columns=columns;
    data=data;
   @track foodPrefSelected = [];
    
    showDatatable=false;

    
    get options(){
        return [
            {
            label:'Vegetarian', value:'Veg'
        },
        {
            label:'Non-Vegetarian', value:'NonVeg'
        },
        {
            label:'Vegan', value:'Vegan'
        },
        {
            label:'Eggetarian', value:'Eggie'
        }
    ];
    }
    connectedCallback(){
        registerListener("fixDiet",this.handleMyDiet, this);
    }
        
    handleMyDiet(mybmi){
        console.log('my bmi is'+mybmi);
        this.bmival = mybmi;
    }

    disconnectedCallback(){
        unregisterAllListeners(this);
    }

    handleNextStep(event){
       if(this.currentStep == '1'){
        console.log('this.food selected'+this.foodPrefSelected);
        this.currentStep ='2';
        this.stepone=false;
        console.log('this.stepone'+this.stepone);
        this.showDatatable=true;
       }else if (this.currentStep == '2'){
       
        this.showDatatable=false;
        this.currentStep = '3';
       }else if(this.currentStep == '3'){
        this.currentStep = '4';
        this.showDatatable=false;
       }
         
    }
    handlePreviousStep(event){
        if(this.currentStep == '4'){
            this.currentStep ='3';
            this.showDatatable=false;
           }else if (this.currentStep == '3'){
            this.currentStep = '2';
            this.showDatatable=true;
           }else if(this.currentStep == '2'){
            console.log('this.food selected'+this.foodPrefSelected);
            this.currentStep = '1';
            this.stepone=true;
            this.showDatatable=false;
           }
             
        }

        handleChange(event){
            this.foodPrefSelected = event.detail.value;
            console.log('checked values'+this.foodPrefSelected);
        }
    }


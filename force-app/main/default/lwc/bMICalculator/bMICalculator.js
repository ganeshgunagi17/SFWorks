import { LightningElement,track,wire } from 'lwc';
import IMAGES from '@salesforce/resourceUrl/myimages';
import { CurrentPageReference } from 'lightning/navigation';
import { fireEvent } from 'c/pubsub';


export default class BMICalculator extends LightningElement {
   
    value='';
    @track name;
    @track age;
    @track height;
    @track gender;
    isBMICalculated;
    BMR;
    idealWeightRes;
    showBMIResult;
    isSpinnerLoading=false;
    bmiStatus;
    @track weight;
    showBmiDiet;
    slideval;
    imageToLoad;
    hasrendered=false;
   
    @wire(CurrentPageReference) pagRef;

    obeseman = IMAGES + '/Images/obeseman.jpg';
    obesewoman = IMAGES + '/Images/obesewoman.jpg';
    normalman = IMAGES + '/Images/normalman.jpg';
    normalwoman = IMAGES + '/Images/normalwoman.jpg';
    underweightman = IMAGES + '/Images/underweightman.jpg';
    underweightwoman = IMAGES + '/Images/underweightwoman.png';
 
    get options(){
        return [

            {label:'Male', value:'Male'},
            {label:'Female', value:'Female'}
        ];
    }
    handleNameChange(event){
        this.name=event.target.value;
    }
    handleAge(event){
        this.age = event.target.value;
    }
    handleHeight(event){
        this.height= event.target.value;
    }

    handleWeight(event){
        this.weight = event.target.value;
    }
    checkBMI(event){
        console.log('this.hasrendered'+this.hasrendered);
        this.isSpinnerLoading=true;
            if(this.weight && this.height){
                let heightInMeters = this.height/100;
                let bmi =(this.weight/Math.pow(heightInMeters,2)).toFixed(2);
                this.idealWeightCalculator();
                console.log('bmi is'+bmi);

                if(bmi<18){
                    this.bmiStatus = 'Underweight';
                    if(this.gender == 'Male'){
                        this.imageToLoad = this.underweightman;
                    }else{
                        this.imageToLoad = this.underweightwoman;
                    }
                    
                  
                }else if(bmi>18 && bmi<25){
                    this.bmiStatus = 'Normal'
                    if(this.gender == 'Male'){
                        this.imageToLoad = this.normalman;
                    }else{
                        this.imageToLoad = this.normalwoman;
                    }
                
                }else if(bmi>25 && bmi<30){
                    this.bmiStatus= 'Overweight';
                    if(this.gender == 'Male'){
                        this.imageToLoad = this.obeseman;
                    }else{
                        this.imageToLoad = this.obesewoman;
                    }
                  
                }else{
                    this.bmiStatus = 'Obese';
                    if(this.gender == 'Male'){
                        this.imageToLoad = this.obeseman;
                    }else{
                        this.imageToLoad = this.obesewoman;
                    }
                    this.isFixDiet=true;
                  
                }
           

                    setTimeout(() => {
                        this.showBMIResult=bmi;
                        this.isSpinnerLoading=false;
                        this.isBMICalculated=true;
                    }, 2000);
            }
    }

  
    idealWeightCalculator(){
        
        if(this.gender == 'Male'){
            let heightinft = (this.height/100) * 3.281;
        
            let diffWeight = (heightinft - Math.floor(heightinft)) * 2.3*10;
            let idealWEight = 50 + diffWeight;
            console.log('final weight'+idealWEight);
            this.idealWeightRes = idealWEight.toFixed(2);

            
            this.BMR = 10*this.weight + 6.25* this.height - 5*this.age + 5;
            console.log('bmr is'+this.BMR);
            
           
        }
        if(this.gender=='Female'){
            let heightinft = (this.height/100) * 3.281;
        
            let diffWeight = (heightinft - Math.floor(heightinft)) * 10  * 2.3;
            let idealWEight = 45.5 + diffWeight;
            console.log('final weight'+idealWEight);
            this.idealWeightRes = idealWEight.toFixed(2);

            this.BMR = 10*this.weight + 6.25* this.height - 5*this.age - 161;
          
           
        }
    }

    handleGender(event){
        console.log('gender is '+event.detail.value);
        this.gender = event.detail.value;
    }

    fixMyDiet(){
      this.showBmiDiet  = true;
      // this.firePubSubEvent(this.showBMIResult);
    }

    firePubSubEvent(bmiresult){
        let obj = {
        'bmiresult' : bmiresult
        };
        fireEvent(this.pagRef,"fixDiet",obj);
    }

  
       
}
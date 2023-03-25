public class EMICalculator {
    public Integer loanAmount{get;set;}
    public Double Rate{get;set;}
    public Integer numberOfMonths{get;set;}
    public Double totalInterestRate{get;set;}
    public Double totalEmi{get;set;}
    public void TotalInterest(){
        
        totalInterestRate=(loanAmount*numberOfMonths*Rate)/100;
        totalEmi=(totalInterestRate/numberOfMonths)+(loanAmount/numberOfMonths);
		       
        
    }
    
    
}
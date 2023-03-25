global class SchedulableMTE2Class implements Schedulable{
    
    global void execute(SchedulableContext contx){
        List<Opportunity> oppty=[select Id,Name,CloseDate,OwnerId from Opportunity where CloseDate < Today and isClosed=False];
        
      
    }

}
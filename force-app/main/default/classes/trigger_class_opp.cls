public class trigger_class_opp{

    public static void check_opportu(List<Opportunity> ops){
    Double totalAmount=0;
    for(Opportunity o1:[Select Amount from Opportunity where createdDate=Today AND createdById= :UserInfo.getUserID()]){
    
    totalAmount+=o1.Amount;
        }
        
        for(Opportunity o2:ops){
        totalAmount+=o2.Amount;
        if(totalAmount>10000)
        o2.addError('Limit has been already exceeded');
    }
}


}
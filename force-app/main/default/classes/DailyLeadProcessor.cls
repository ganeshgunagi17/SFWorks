public class DailyLeadProcessor implements Schedulable {
     
     
     public void execute (SchedulableContext scon){
         List<Lead> leadSource=[select LeadSource,Id from Lead where LeadSource='' LIMIT 200];
         List<Lead> lst=new List<Lead>();
         for(Lead ls:leadSource){
             ls.LeadSource='Dreamforce';
             lst.add(ls);  
         }
         update lst;
     }

}
public class QueableApexJob implements Queueable {
	
    public List<Account> accname;
   
    public QueableApexJob(List<Account> name){
        this.accname=name;
       
    }
    public void execute(QueueableContext qc){
        for(Account acc:accname){
            acc.Name='Queuable Job';
          
               
        }
        update accname;
    }
}
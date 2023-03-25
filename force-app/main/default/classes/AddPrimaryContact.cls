public class AddPrimaryContact implements Queueable {
    private Contact cont;
    private String billState;
    public AddPrimaryContact(Contact lscon,String state){
        this.cont=lscon;
        this.billState=state;
    }
    public void execute(QueueableContext Qc){

        for(Account ac:[select Id,Name from Account where BillingState=:billstate LIMIT 200]){
            Contact con=new Contact(FirstName='Abc',LastName='xyz',AccountID=ac.Id);
          
        }
    }
}
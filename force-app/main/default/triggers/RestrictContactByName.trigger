trigger RestrictContactByName on Contact (before insert,before update) {

    for(Contact cont:Trigger.new){
        if(cont.LastName=='INVALIDNAME'){
            cont.LastName.addError('Cannot insert or update the contact with lastname as INVALIDNAME.....');
            
        }
    }
}
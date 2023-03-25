trigger Opportu_Trigger on Opportunity (before insert) {

trigger_class_opp.check_opportu(Trigger.new);
}
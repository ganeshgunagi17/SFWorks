public class BattleStationBatchApexClass {

    public String name{get;set;}
    public static void invokeBatch(){
        BatchClassBattle bc=new BatchClassBattle();
        Database.executeBatch(bc, 400);
    }
}
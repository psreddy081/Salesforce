public with sharing class SnadDeveloperController{
    
    @AuraEnabled
    public static List<SNAD_Developers__c> insertRecord(String snadName, String snadOrg){
        Boolean flag = false;
        List<SNAD_Developers__c> snadRecords = new List<SNAD_Developers__c>();
        try{
                       
            SNAD_Developers__c snad = new SNAD_Developers__c();
            snad.Name = snadName;
            snad.Org__c = snadOrg;

            if(snad.Name !=null && snad.Org__c!=null){
                
                Database.insert(snad);
                flag  = true;
                
            }

            if(flag){
                
                 snadRecords = [Select Id, Name, Org__c from SNAD_Developers__c where id =: snad.id];
                
            }
           return snadRecords;
        }
        catch(Exception e){
           
           return null;
        }
    }
    @AuraEnabled
    public static SNAD_Developers__c getRecords(Id recId){

        return [Select Id, Name, Org__c from SNAD_Developers__c where id =: recId];
    }
}
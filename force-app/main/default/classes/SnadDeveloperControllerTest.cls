@isTest
public class SnadDeveloperControllerTest{

@isTest
    public static void myTestMethod(){
    SNAD_Developers__c snad = new SNAD_Developers__c();
            snad.Name = 'Snad';
            snad.Org__c = 'dimcon';
        insert snad;
        
      SnadDeveloperController.insertRecord('Snad','dimcon');
      SnadDeveloperController.getRecords(snad.id);
    }
}
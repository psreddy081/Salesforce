@isTest
public class AccountControllerTest{
    @isTest
    public static void myTestMethod(){
        Account acc = new Account(Name = 'test acc');
        insert acc;

      List<Account> lst=   AccountController.getAccounts();
      CreateAcc.createAccount(acc);
      FetchAllRecords.fetchRecords(acc.id);
      lwcSelectedRecordIdCtrl.getAccountList();
      //SnadDeveloperController.
    }
}
public with sharing class BoatDataService {
    public static final String LENGTH_TYPE = 'Length';
    public static void insertNewAccount(String accntName) {
        Account acct = new Account();
        acct.Name = accntName;
        // if (!Schema.sObjectType.Account.fields.Name.isCreateable()) {
        insert acct;
        // }
    }
    public List<Account> getAllAccount() {
        return [SELECT Id, Name, Phone, Website FROM Account];
    }
}

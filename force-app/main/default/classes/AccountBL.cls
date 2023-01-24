/**
 * @description This class will contain all method related to Account Business Logic
 */
public with sharing class AccountBl {
    public static final String LENGTH_TYPE = 'Length';
    public static void insertNewAccount(String accntName) {
        for (Integer i = 0; i < 10; i++) {
            Account acct = new Account();
            acct.Name = accntName;
            // if (!Schema.sObjectType.Account.fields.Name.isCreateable()) {
            insert acct;
            // }
        }
    }
    public List<Account> getAllAccount() {
        return [SELECT Id, Name, Phone, Website FROM Account];
    }
}

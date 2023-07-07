public with sharing class AvoidDebugStatements {    
    public Account bar() {   
    Account acc = [SELECT Name, Owner.Name FROM Account WITH SECURITY_ENFORCED LIMIT 1];    
        System.debug(acc); // will get reported    
           return acc;    
    }

    @SuppressWarnings('PMD.AvoidDebugStatements')
    public void baz(){   
        try {    
Account myAccount = bar();
return myAccount;
        } catch (Exception e) {
        System.debug(LoggingLevel.ERROR, e.getMessage()); // good to go
    }      
    }
}

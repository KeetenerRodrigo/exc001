/**
 * @author Keetener Rodrigo
 */

public virtual class AccountFilter {

    virtual
    public List<Account> filterByCategory(List<Account> newAccounts, Map<Id,Account> oldAccounts) {
 
        List<Account> filteredAccounts = new List<Account>();

        for (Account account: newAccounts){

            if(String.isEmpty(account.category__c)) {
                continue;   
            }
            
            if(account.annualrevenue == null) {
                continue;   
            }

            if(oldAccounts == null ||  oldAccounts.isEmpty()){
                filteredAccounts.add(account);
                continue;
            }

            filteredAccounts.add(account);
        }

        return filteredAccounts;
    }
}
/**
 * @author Keetener Rodrigo
 */
public virtual class AccountFilter {

    public List<Account> filterByCategoryAndAnnualRevenue ( List<Account> accounts, Decimal annualRevenue,  String category) {

        List<Account> filteredAccounts = new List<Account>();

        for (Account account : accounts) {
            if ( account.Category__c == category
                && account.AnnualRevenue > annualRevenue ) {
                filteredAccounts.add(account);
            }
        }

        return filteredAccounts;
    }
}
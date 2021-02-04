/**
 * @author Keetener Rodrigo
 */

@isTest
public class AccountFilterTest {
    @isTest
    static void filterByChangedDocumentNumberTest (){
       List<Account> accounts = new List<Account>();
        accounts.add(AccountFixtureFactory.newAccount('John Doe', 150000000, 'Premium'));
        accounts.add(AccountFixtureFactory.newAccount('John Tre', 150000000, 'Standard'));
        insert accounts;

        AccountFilter filter = new AccountFilter();

        List<Account> filteredAccounts = filter.filterByCategoryAndAnnualRevenue(accounts);

        System.assertEquals(accounts.size(), filteredAccounts.size());
        System.assert(filteredAccounts == null);
    }
}
/**
 * @author Keetener Rodrigo
 */
@isTest
public class AccountFilterTest {
    @isTest
    static void filterAccountByCategoryAndAnnualRevenue (){
        Map<String,SObject> records = AccountFixtureFactory.createIntegratedScenario();
        Account account = (Account) records.get('account');

        List<Account> accounts = new List<Account>();
        accounts.add(account);

        AccountFilter filter = new AccountFilter();
        List<Account> filteredAccountsPremium = filter.filterByCategoryAndAnnualRevenue(accounts, 1000000, 'Premium');

        System.assertEquals(accounts.size(), filteredAccountsPremium.size());

        List<Account> filteredAccountsStandard = filter.filterByCategoryAndAnnualRevenue(accounts, 1000000, 'Standard');
        System.assert(filteredAccountsStandard.size() == 0);
    }
}
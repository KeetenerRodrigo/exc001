/**
 * @author Keetener Rodrigo
 */

@isTest
public class AccountRepositoryTest {
    @isTest
    static void givenThatWhenCreateNewAccountsThenTheReturnIsNotNull() {
        Account account = new Account();
        account.Name = 'John Doe';
        account.AnnualRevenue = 100000000;
        account.Category__c = 'Premium';

        List<Account> accounts = new List<Account>{
           account
        };

        System.assert(accounts.size() != 0);

        AccountRepository accountRepository = new AccountRepository();

        List<Account> createAccount = accountRepository.create(accounts);

        System.assertEquals(accounts.size(), createAccount.size());
    }
}
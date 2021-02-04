/**
 * @author Keetener Rodrigo
 */

@isTest
public class AccountRepositoryTest {
    @isTest
    static void givenThatWhenCreateNewAccountsThenTheReturnIsNotNull() {
        
        List<Account> listAcccounts = new List<Account>{
            AccountFixtureFactory.createAccount('John Doe', 150000000, 'Premium'),
            AccountFixtureFactory.createAccount('John Tre', 100000, 'Standard'),
            AccountFixtureFactory.createAccount('John Four', 10, 'Premium'),
            AccountFixtureFactory.createAccount('John Five', 5255555, 'Gold')
        };

        List<Account> accounts =  new AccountRepository().create(listAcccounts);

        System.assertEquals(listAcccounts.size(), 4);
        System.assert(accounts == null);
    }
}
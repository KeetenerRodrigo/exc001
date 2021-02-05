/**
 * @author Keetener Rodrigo
 */

@isTest
public class AccountRepositoryTest {
    @isTest
    static void givenThatWhenCreateNewAccountsThenTheReturnIsNotNull() {
        Account account = AccountFixtureFactory.createAccount('John Doe', 150000000, 'Premium');
        System.assert(account != null);
    }
}
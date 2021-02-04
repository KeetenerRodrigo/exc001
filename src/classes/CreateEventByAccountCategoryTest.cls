/**
 * @author Keetener Rodrigo
 */

@isTest
public class CreateEventByAccountCategoryTest {

    @isTest
    static void givenThatWhenCreatingANewAccountWithThePremiumCategoryAndAnnualRevenueGreaterThanOneMillionThenTheReturnOfTheEventisExpecttoBeNull() {
       Event event = new CreateEventByAccountCategory( 
           AccountFixtureFactory.newAccount('John Doe', 150000000, 'Premium')).createEvent();

       DateTime accountDateCreated = DateTime.now();

        System.assert(event != null);
        System.assertEquals(accountDateCreated.addDays(1), event.StartDateTime);
        System.assertEquals(accountDateCreated.addDays(1).addHours(1), event.EndDateTime);
    }

    @isTest
    static void givenThatWhenCreatingANewAccountWithThePremiumCategoryAndAnnualRevenueLessThanOneMillionThenTheReturnOfTheEventisExpecttoBeNull () {
        Event event = new CreateEventByAccountCategory(AccountFixtureFactory.newAccount('John Trê', 10, 'Premium') )
             .createEvent();
             
        DateTime accountDateCreated = DateTime.now();
 
         System.assert(event == null);
    }

    @isTest
    static void givenThatWhenCreatingANewAccountWithTheGoldCategoryThenTheEventReturnIsExpectToBeNull () {
        Event event = new CreateEventByAccountCategory(AccountFixtureFactory.newAccount('John Four', 150000000, 'Gold') )
             .createEvent();
             
        DateTime accountDateCreated = DateTime.now();
 
         System.assert(event == null);
     }

     @isTest
     static void givenThatWhenCreatingANewAccountWithTheStandardCategoryThenTheEventReturnIsExpectToBeNull () {
         Event event = new CreateEventByAccountCategory(AccountFixtureFactory.newAccount('John Five', 150000000, 'Standard') )
              .createEvent();
              
         DateTime accountDateCreated = DateTime.now();
  
          System.assert(event == null);
      }
}
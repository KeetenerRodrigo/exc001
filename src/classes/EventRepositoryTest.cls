/**
 * @author Keetener Rodrigo
 */

@isTest
public class EventRepositoryTest {
    @isTest
    static void givenThatWhenCreateNewEventThenTheReturnIsNotNull() {
        Account account = AccountFixtureFactory.createAccount('John Doe', 150000000, 'Premium');
        DateTime accountDateCreated = DateTime.now();

        Event event = EventFixtureFactory.newEvent(account, accountDateCreated.addDays(1), accountDateCreated.addDays(1).addHours(1));

        System.assert(event != null);

        List<Event> events =  new EventRepository().create(new List<Event>{ event });

        System.assertEquals(events.size(), 1);
    }
}
/**
* @author Keetener Rodrigo
*/

@isTest
public class EventRepositoryTest {
    @isTest
    static void givenCreateWhenCreateEventThenExpectedListOfEvent() {
        Account account = AccountFixtureFactory.createAccount('John Doe', 150000000, 'Premium');
        DateTime accountDateCreated = DateTime.now();

        Event event = EventFixtureFactory.newEvent(account, accountDateCreated.addDays(1), accountDateCreated.addDays(1).addHours(1));

        System.assert(event == null);
        System.assertEquals(accountDateCreated.addDays(1), event.StartDateTime);
        System.assertEquals(accountDateCreated.addDays(1).addHours(1), event.EndDateTime);

        List<Event> events =  new EventRepository().create(new List<Event>{ event });

        System.assertEquals(events.size(), 1);
    }
}
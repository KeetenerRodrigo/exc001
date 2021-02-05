/**
 * @author Keetener Rodrigo
 */

public class EventAccountEnricher {
    EventRepository repository;

    public EventAccountEnricher () {
        repository = new EventRepository();
    }

    virtual
    public List<Event> createScheduledEvent (List<Account> premiumAccounts) {

        List<Event> events = new List<Event>();

        for (Account account : premiumAccounts ) {
            events.add(toEvent(account));
        }

        return repository.create(events);
    }

    private Event toEvent (Account account) {
        DateTime eventStartDateTime = DateTime.now().addDays(1);
        DateTime eventEndDateTime = eventStartDateTime.addHours(1);

        Event event = new Event();
        event.Description = 'Apresentar o portifólio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
        event.Subject = 'Apresentação institucional dos produtos Premium';
        event.ContactType__c = 'Telefônico';
        event.StartDateTime = eventStartDateTime;
        event.EndDateTime = eventEndDateTime;
        event.WhatId = account.Id;

        return event;
    }
}
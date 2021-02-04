/**
* @author Keetener Rodrigo
*/

@isTest
public with sharing class EventFixtureFactory {
    
    public static Event newEvent(Account account, DateTime eventStartDateTime, DateTime eventEndDateTime) {
        return new Event(
            StartDateTime = eventStartDateTime,
            EndDateTime = eventEndDateTime,
            WhatId = account.Id
        );
    }

    public static Event createEvent(Account account, DateTime eventStartDateTime, DateTime eventEndDateTime) {
        return createEvent(newEvent(account, eventStartDateTime, eventEndDateTime));
    }

    public static Event createEvent(Event event) {
        insert event;
        return event;
    }
}
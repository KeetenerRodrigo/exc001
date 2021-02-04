/**
* @author Keetener Rodrigo
*/

public virtual class EventRepository {

    public List<Event> findAllEvents(){
        return[
            SELECT Id, Description, Subject, WhatId, ContactType__c
            FROM Event
        ];
    }
    
    virtual
    public List<Event> create(List<Event> events){
        insert events;
        return events;
    }
}
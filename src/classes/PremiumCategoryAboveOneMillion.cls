/**
* @author Keetener Rodrigo
*/

public class PremiumCategoryAboveOneMillion {
    Account account;

    
    public PremiumCategoryAboveOneMillion(Account account) {
        this.account = account;
    }
    
    
    public Event verify() {
        DateTime eventStartDateTime = DateTime.now().addDays(1);
        DateTime eventEndDateTime = eventStartDateTime.addHours(1);
        
        Event event = new Event(
          Description = 'Apresentar o portifólio de produtos para o novo cliente com enfoque em nossa carteira Premium'
        , Subject = 'Apresentação institucional dos produtos Premium'
        , StartDateTime = eventStartDateTime
        , EndDateTime = eventEndDateTime
        , WhatId = account.Id
        , ContactType__c = 'Telefônico');

        return event;
    }
}
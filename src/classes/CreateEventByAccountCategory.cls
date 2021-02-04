/**
 * @author Keetener Rodrigo
 */

public class CreateEventByAccountCategory {
    Account account;

    public CreateEventByAccountCategory(Account account) {
        this.account = account;
    }

    public Event createEvent() {
        switch on account.category__c {
            when 'Premium' {
                Event event;

                if(account.annualRevenue > 1000000) {
                    event = new AccountEventEnricher(account).verify();
                } 
                
                return event;
            }

            when else {
                return null;
            }
        }
    }
}
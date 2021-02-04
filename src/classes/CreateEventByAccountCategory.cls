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

                if(account.annualRevenue > 100000000) {
                    event = new PremiumCategoryAboveOneMillion(account).verify();
                } 
                
                return event;
            }

            when else {
                return null;
            }
        }
    }
}
/**
 * @author Keetener Rodrigo
 */

public virtual class AccountTH extends TriggerHandler{

    List<Account> newAccounts;
    Map<Id,Account> oldAccounts;

    AccountFilter filter;

    EventAccountEnricher eventAccountEnricher;

    public AccountTH(){
        this((List<Account>) Trigger.new, (Map<Id, Account>) Trigger.oldMap);
    }
    
    public AccountTH(List<Account> newAccounts,  Map<Id,Account> oldAccounts) {
        this.newAccounts = newAccounts;
        this.oldAccounts = oldAccounts;


        this.filter = new AccountFilter();
        this.eventAccountEnricher = new EventAccountEnricher();
    }

    virtual
    override
    public void afterInsert() {
       createNewEventForPremiumAccountsWithAnnualRevenueOverOneMillion();
    }

    public void createNewEventForPremiumAccountsWithAnnualRevenueOverOneMillion(){
        List<Account> premiumAccounts = this.filter.filterByCategoryAndAnnualRevenue(this.newAccounts, 1000000, 'Premium');
        this.eventAccountEnricher.createScheduledEvent(premiumAccounts);
    }
}
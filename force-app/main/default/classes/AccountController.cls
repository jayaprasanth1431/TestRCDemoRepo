public class AccountController {
    public static void createContact(List<Account> accList){
        set<Id> accId = new set<Id>();
        List<Contact> createCon = new List<Contact>();
        for(Account acc : accList){
            accId.add(acc.id);
            if(acc.Account_Status__c == 'New'){
                Contact con = New Contact();
                con.LastName = 'Test Contact';
                con.AccountId = acc.Id;
                con.Level__c = 'Primary';
                createCon.add(con);
            }
        }
        insert createCon;
    }
    
}
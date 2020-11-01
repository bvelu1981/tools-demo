public with sharing class ContactListController {
    public ContactListController() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
                return [SELECT Id, FirstName, LastName FROM CONTACT Limit 10];        
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}

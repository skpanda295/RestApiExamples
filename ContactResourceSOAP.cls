global with sharing class ContactResourceSOAP {
    webservice static List<Contact> getContactIdAndNames(Integer contactLimit) {
        // Querying contacts
        List<Contact> contactList = [SELECT Id, Name, Birthdate, Phone FROM Contact LIMIT :contactLimit];
        // Returning the contacts in the response
        return contactList;
    }
}
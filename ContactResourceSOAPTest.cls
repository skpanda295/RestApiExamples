@isTest
public class ContactResourceSOAPTest {
    
    @TestSetup
    static void makeData(){
        List<Contact> conlist=new List<Contact>();
        Integer i=0;
        for(i=0;i<5;i++){
            contact c= new Contact();
            c.FirstName='Test '+i;
            c.LastName='Contact';
            c.Age__c=10;
            conlist.add(c);
        }
        insert conList;
    }

    @isTest
    static void testGetContactIdAndNames(){
        Test.startTest();
        List<Contact> returnedContacts=ContactResourceSOAP.getContactIdAndNames(1);
        System.assert(returnedContacts != null);
        System.assertEquals(returnedContacts.size(), 1);
        System.assertEquals('Test 0 Contact', returnedContacts[0].name);
        Test.stopTest();
        
    }
    
}
@isTest
private class RepositoryGridControllerTest 
{
    static testMethod void testController() 
    {
        Test.startTest();
        
        List<Repository__c> listRepository = RepositoryGridController.loadComponent();
        System.assertEquals(0, listRepository.size());
        
        Test.stopTest();
    }
}

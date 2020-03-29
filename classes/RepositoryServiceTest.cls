@isTest
private class RepositoryServiceTest 
{
    static testMethod void testService() 
    {
        Test.startTest();
		
        Test.setMock(HttpCalloutMock.class, new RepositoryServiceMock());
        RepositoryService.getRepositories();
        
        Test.stopTest();
    }
}

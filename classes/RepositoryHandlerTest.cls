@isTest
private class RepositoryHandlerTest 
{
    static testMethod void testHandler() 
    {        
         Repository__c repository = new Repository__c();
         repository.Name = 'Rep name';
         repository.Owner = 'Me';
         repository.Forks__c = 2;
         repository.Stars__c = 1;
         repository.GithubId__c = '14009';
        
         List<Repository__c> listRepository = new List<Repository__c>();
         listRepository.add(repository);
        
         Test.startTest();
        
         RepositoryHandler.shareRepository(listRepository);
        
         List<Repository__Share> listShare = [SELECT Id FROM Repository__Share WHERE ParentId =: repository.Id];
         System.assertEquals(1, listShare.size());
 
         Test.stopTest();
    }
}

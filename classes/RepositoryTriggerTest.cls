@isTest
private class RepositoryTriggerTest 
{
    static testMethod void testTrigger() 
    {        
         Test.startTest();
        
         Repository__c repository = new Repository__c();
         repository.Name = 'Rep name';
         repository.Forks__c = 2;
         repository.Stars__c = 1;
         repository.GithubId__c = '14009';
         insert repository;
 
         Test.stopTest();
    }
}

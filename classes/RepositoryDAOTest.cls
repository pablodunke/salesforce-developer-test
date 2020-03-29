@isTest
private class RepositoryDAOTest 
{
    static testMethod void testDAO() 
    {
        Repository__c repository = new Repository__c();
        repository.Name = 'Rep name';
        repository.Forks__c = 6;
        repository.Stars__c = 2;
        repository.GithubId__c = '14008';
        insert repository;
        
        Test.startTest();
        
        List<Repository__c> listRepository = RepositoryDAO.getListRepositoryOrderByStars();
        System.assertEquals(1, listRepository.size());
        
        Test.stopTest();
    }
}

public class RepositoryDAO 
{
	public static List<Repository__c> getListRepositoryOrderByStars()
    { 
        List<Repository__c> listRepository = [SELECT Id, Name, Forks__c, Stars__c, GithubId__c FROM Repository__c ORDER BY Stars__c DESC];
        return listRepository;
    }
}

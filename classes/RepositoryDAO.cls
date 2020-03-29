public class RepositoryDAO 
{
    public static List<Repository__c> getListRepository()
    { 
        List<Repository__c> listRepository = [SELECT Id, Name, Forks__c, Stars__c, GithubId__c FROM Repository__c];
        return listRepository;
    }
}

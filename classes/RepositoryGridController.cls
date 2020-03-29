public class RepositoryGridController 
{
    @AuraEnabled
    public static List<Repository__c> loadComponent()
    {
        List<Repository__c> listRepository = RepositoryDAO.getListRepositoryOrderByStars();
        return listRepository;
    }
}

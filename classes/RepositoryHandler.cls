public class RepositoryHandler 
{
    public static void shareRepository(List<Repository__c> pListRepository)
    {
        List<Repository__Share> listShare = new List<Repository__Share>();
      
        for(Repository__c forRepository: pListRepository)
        {
            Repository__Share adminShare = new Repository__Share();
            adminShare.ParentId = forRepository.Id;
            adminShare.UserOrGroupId = Sharing__c.getOrgDefaults().Administrator__c;
            adminShare.AccessLevel = 'edit';
            listShare.add(adminShare);
        }
        
        insert listShare;
    }
}

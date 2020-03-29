public class RepositoryHandler 
{
    public static void shareRepository(List<Repository__c> pListRepository)
    {
        List<Repository__Share> listShare = new List<Repository__Share>();
       
        Repository__Share adminShare;
        
        for(Repository__c forRepository: pListRepository)
        {
            adminShare = new Repository__Share();
            adminShare.ParentId = forRepository.Id;
            adminShare.UserOrGroupId = Sharing__c.getOrgDefaults().Administrator__c;
            adminShare.AccessLevel = 'edit';
            listShare.add(adminShare);
        }
        
        insert listShare;
    }
}

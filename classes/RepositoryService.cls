public class RepositoryService 
{
    @future (callout = true)
    public static void getRepositories()
    {    
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1');
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        String body = response.getBody();
        
        RepositoryObject repObject = (RepositoryObject) JSON.deserialize(body, RepositoryObject.Class);
        
        List<Repository__c> listRepository = new List<Repository__c>();
        for(RepositoryObject.items forItem: repObject.items)
        {
            Repository__c forRepository = new Repository__c();
            forRepository.GithubId__c = forItem.id;
            forRepository.Name = forItem.name;
            forRepository.Owner__c = forItem.owner.login;
            forRepository.Forks__c = forItem.forks;
            forRepository.Stars__c = forItem.stargazers_count;
            listRepository.add(forRepository);
        }
        
        upsert listRepository GithubId__c;
    }
}

@isTest
global class RepositoryServiceMock implements HttpCalloutMock
{
    global HttpResponse respond(HTTPRequest req)
    {
        RepositoryObject.owner owner = new RepositoryObject.owner();
        owner.login = 'Dunke';
        owner.id = '1';
        owner.node_id = '14R';
        owner.avatar_url = '';
        
        RepositoryObject.items item = new RepositoryObject.items();
        item.id = '4';
        item.node_id = 'RT6';
        item.name = 'Guide';
        item.full_name = 'Dunke/Guide';
        item.owner = owner; 
        item.html_url = '';
        item.description = 'A Guide';
        item.forks = 2;
        item.score = 5.0;
        
        List<RepositoryObject.items> listItems = new List<RepositoryObject.items>();
        listItems.add(item);
        
        RepositoryObject repository = new RepositoryObject();
        repository.total_count = 5;
        repository.incomplete_results = true;
        repository.items = listItems;
        
        String body = JSON.serialize(repository);
        
        HttpResponse res = new HttpResponse();
        res.setStatus('OK');
        res.setStatusCode(200);
        res.setBody(body);
        return res;
    }
}

public class RepositoryObject
{
    public Decimal total_count;
    public Boolean incomplete_results;
    public List<items> items;
    
    public class items 
    {
        public String id;
        public String node_id;
        public String name;
        public String full_name;
        public owner owner; 
        public String html_url;
        public String description;
        public Decimal forks;
        public Double score;
    }
    
    public class owner
    {
        public String login;
        public String id;
        public String node_id;
        public String avatar_url;
    }
}

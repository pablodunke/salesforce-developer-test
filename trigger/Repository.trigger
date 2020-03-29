trigger RepositoryTrigger on Repository__c(after insert) 
{
    if(trigger.isInsert)
    {
        RepositoryHandler.shareRepository(trigger.new);
    }
}

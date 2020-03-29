global class RepositorySchedule implements Schedulable 
{
    global void execute(SchedulableContext pContext) 
    {
        RepositoryService.getRepositories();
    }
}

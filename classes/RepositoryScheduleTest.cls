@isTest
private class RepositoryScheduleTest 
{
    static testMethod void testSchedule() 
    {        
         test.startTest();
        
         RepositorySchedule rep = new RepositorySchedule();   
         String chron = '0 0 23 * * ?';        
         system.schedule('Test Repository Schedule', chron, rep);
        
         test.stopTest();
    }
}

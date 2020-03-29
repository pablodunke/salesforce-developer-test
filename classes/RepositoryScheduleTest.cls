@isTest
private class RepositoryScheduleTest 
{
    static testMethod void testSchedule() 
    {        
         Test.startTest();
        
         RepositorySchedule rep = new RepositorySchedule();   
         String chron = '0 0 23 * * ?';        
         System.schedule('Test Repository Schedule', chron, rep);
        
         Test.stopTest();
    }
}

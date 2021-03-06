## Requirements

[LINK](Exercise.md)

## Solution

### Manual Steps

* Allow the endpoint https://api.github.com in the Remote Site Settings
* Enable and set the values for the Schedule used to retrieve the daily values for the repositories
* Set the value of an user in the Custom Settings for the sharing configuration required in the trigger

### Classes, Triggers, Components, Objects and Unit Tests that were created to solve the problem

* aura/repository_grid
* classes/RepositoryDAO.cls
* classes/RepositoryDAOTest.cls
* classes/RepositoryGridController.cls
* classes/RepositoryGridControllerTest.cls
* classes/RepositoryHandler.cls
* classes/RepositoryHandlerTest.cls
* classes/RepositoryObject.cls
* classes/RepositorySchedule.cls
* classes/RepositoryScheduleTest.cls
* classes/RepositoryService.cls
* classes/RepositoryServiceMock.cls
* classes/RepositoryServiceTest.cls
* classes/RepositoryTriggerTest.cls
* objects/Repository.object
* triggers/Repository.trigger

### Possible Future Improvements

* Create a Named Credential to store the endpoint address for the Github site instead of hardcode it
* Enable an option to change the language of the query, current the only language being retrieved is Java
* A few code improvements, like exceptions and insertions with Database.insert

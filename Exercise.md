## TOPi - Salesforce Developer Test

### Goal

* To develop an application able to display a grid with the most starred repositories of a language in github.
* The URL with the repos: [LINK](repositories.txt)

### Required

* You need to develop both the front-end (Visualforce or Lightning) and the back-end (Apex).
* Create a schedulable class which will run once a day and populate a custom object with Github's response.
* Create a page to display a grid with the results (loading the data from the custom object).
* Each row of the grid must display at least: repository name, number of stars and the number of forks.
* Readable code (variable names, structures)
* At least 75% code coverage

### Extra points

* Create a trigger which will share each record from your custom object to another user in the org (any user).
* A good design

### Tip

* A future method for the callout might help.

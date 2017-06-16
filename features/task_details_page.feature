Feature: View detailed page of task request
As a requester
in order to view details of my task request,
I should visit a page that shows detailed information of the task request created.

Scenario: View a requesters tasks
  Given there are two reqesters having several tasks each belonging to some categories
  And I am logged in as "requester1@r.com"
  And I am on the landing page
  And I click on "View My Tasks"
  And I click link "Bad computer"
  Then I should see "Gothenborg, Sweden"
  And I should see "200"

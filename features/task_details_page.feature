Feature: View detailed page of task request
As a requester
in order to view details of my task request,
I should visit a page that shows detailed information of the task request created.

Scenario: View a requesters tasks
  Given there are two reqesters having several tasks each belonging to some categories
  And I am on the landing page
  And I click on "Requester Log In"
  And I fill in field "Email" with "requester1@r.com"
  And I fill in field "Password" with "12345678"
  And I click on "Log In"
  And I click on "View My Tasks"
  And I click link "Bad computer"
  Then I should see "Gothenborg, Sweden"
  And I should see "200"

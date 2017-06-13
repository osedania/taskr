Feature: Status attribute to task object
  As a requester and contractor
  I would like to see the status of task
  To see which one that are available to bid on

  Background:
    Given there are two reqesters having several tasks each belonging to some categories

  Scenario: The common view of all tasks has a status field
    Given I visit the landing page
    And I click link "Current Available Tasks"
    Then I should see "Status:"

  Scenario: The common view of a specific task has a status field
    Given I visit the landing page
    And I click link "Current Available Tasks"
    And I click link "Bad computer"
    Then I should see "Status:"

  Scenario: The view of a requester's tasks has a status field
    Given I log in as requester "requester1@r.com" with password "12345678"
    And I click link "View My Tasks"
    Then I should see "Status:"

  Scenario: The view of a requester's task details has a status field
    Given I log in as requester "requester1@r.com" with password "12345678"
    And I click link "View My Tasks"
    And I click link "Broken pipe"
    Then I should see "Status:"

  Scenario: A task with a status other than open or bidding, does not show on the common task list
    Given I log in as requester "requester1@r.com" with password "12345678"
    And I visit the landing page
    And I click link "Current Available Tasks"
    Then I should see "Bad computer"
    And I should not see "Fix broken table"

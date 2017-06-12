Feature: Edit & Delete Task
  As a user
  In order to update my task request
  I should have the option to edit an open task request

  Background:
  Given there are two reqesters having several tasks each belonging to some categories


  Scenario: Edit a task
    Given I visit the landing page
    And I am logged in as "requester1@r.com" and password "12345678"
    And I click on "View My Tasks"
    And I click link "Bad computer"
    Then I should see "Edit task"
    And I click on "Edit task"
    And I fill in field "Task Name" with "Broken computer"
    And I fill in field "Description" with "faulty powerpack"
    And I select "Computer" from "Task Category"
    And I fill in field "Minimum Budget($):" with "500"
    And I fill in field "Maximum Budget($):" with "700"
    And I fill in field "Location" with "Gothenbourg"
    And I click on "Submit"
    Then I should see "Task Updated!"


  Scenario: Delete a task
    Given I visit the landing page
    And I am logged in as "requester1@r.com" and password "12345678"
    And I click on "View My Tasks"
    And I click link "Bad computer"
    Then I should see "Delete task"
    And I click on "Delete task"
    Then I should not see "Bad computer"
    Then I should see "Task Deleted!"

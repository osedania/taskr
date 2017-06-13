Feature: Edit & Delete Task
  As a user
  In order to update my task request
  I should have the option to edit an open task request

  Background:
    Given there are two reqesters having several tasks each belonging to some categories

  Scenario: Owner of a task can edit it.
    Given I am logged in as "requester1@r.com"
    And I visit the landing page
    And I click on "View My Tasks"
    And I click link "Bad computer"
    And I click on "Edit task"
    And I fill in field "Task Name" with "Broken computer"
    And I fill in field "Description" with "faulty powerpack"
    And I select "Computer" from "Task Category"
    And I fill in field "Minimum Budget:" with "500"
    And I fill in field "Maximum Budget:" with "700"
    And I fill in field "Location" with "Gothenbourg"
    And I click on "Submit"
    Then I should see "Task Updated!"
    And I should see "Task Name: Broken computer"
    And I should see "Description: faulty powerpack"
    And I should see "Location: Gothenbourg"
    And I should see "Minimun budget: 500"
    And I should see "Maximum budget: 700"
    And I should see "Category: Computer"

  Scenario: Delete a task
    Given I am logged in as "requester1@r.com"
    And I visit the landing page
    And I click on "View My Tasks"
    And I delete "Bad computer"
    Then I should not see "Bad computer"
    Then I should see "Task Deleted!"
    And the task should not be present in the database

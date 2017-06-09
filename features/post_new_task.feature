Feature: As a visitor or user,
  In order to post a task request,
  I should see a link/button on the index page that provides a form.

  Background:
    Given the task categories exist
      | name                |
      | Plumbing            |
      | Electrical          |
      | Computer            |
      | Carpenting          |
      | Cleaning            |

  Scenario:
    Given I visit the landing page
    And I click on "Post new task"
    Then I should see "New Task"
    And I fill in field "Task Name" with "Broken Sink"
    And I fill in field "Description" with "Clogged Sink"
    And I select "Plumbing" from "Task Category"
    And I select "100-200" from "Budget"
    And I fill in field "location" with "Miami Beach"
    And I click on "Submit"
    And I fill in field "Email" with "requester@ab.com"
    And I fill in field "Password" with "12345678"
    And I click on "Log In"
    Then I should see "Task successfully created"

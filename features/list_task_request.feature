Feature: View list of task requests
  As a user
  In order to confirm my job request was successfully created
  I should view a page with a list of my job request created

  Background:
    Given the following requester accounts exist
      | email             | first_name | last_name | password | password_confirmation |role         |
      | requester@ab.com  | Re         | Quester   | 12345678 | 12345678              |requester    |
      | requester2@ab.com | James      | Bond      | 12345678 | 12345678              |requester    |

    Given the task categories exist
      | name                |
      | Plumbing            |
      | Electrical          |
      | Computer            |
      | Carpentry           |
      | Cleaning            |

    And the following tasks exists
      | name                | description             | location             | task_category | user             |
      | Bad computer        | faulty motherboard      | Gothenborg, Sweden   | Computer      | requester@ab.com |
      | Bad mowing machine  | power surge damaged     | Gothenborg, Sweden   | Electrical    | requester@ab.com |
      | Broken pipe         | pipe in kitchen broken  | Gothenborg, Sweden   | Plumbing      | requester2@ab.com|
      | fix broken table    | faulty motherboard      | Gothenborg, Sweden   | Carpentry     | requester2@ab.com| 

  Scenario: View list of task requests
    Given I visit the landing page
    And I click on "Requester Log In"
    And I fill in field "Email" with "requester@ab.com"
    And I fill in field "Password" with "12345678"
    And I click on "Sign In"
    And I click on "View My Tasks"
    Then I should see "Bad computer"
    And I should see "Bad mowing machine"
    And I should not see "Broken pipe"

    Scenario: Requester1 shouldn't see requester2's sasks
      Given I visit the landing page
      And I click on "Requester Log In"
      And I fill in field "Email" with "requester2@ab.com"
      And I fill in field "Password" with "12345678"
      And I click on "Sign In"
      And I click on "View My Tasks"
      Then I should not see "Bad computer"

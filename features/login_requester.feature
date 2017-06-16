Feature: Log in to requester account
As a user,
In order to post a task request,
I need to be able to login to my account.

  Background:
    Given the following requester accounts exist
    | email             | first_name | last_name | password | password_confirmation |role       |
    | requester@ab.com  | Re         | Quester   | 12345678 | 12345678              |requester  |

  Scenario:
    Given I am on the landing page
    And I click on "Requester Log In"
    Then I should see "Sign In Form"
    And I fill in field "Email" with "requester@ab.com"
    And I fill in field "Password" with "12345678"
    And I click on "Sign In"
    Then I should see "Signed in successfully."

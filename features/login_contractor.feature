Feature: Log in to contractor account
As a contractor,
In order to apply for task requests,
I need to be able to login to my validated account.

  Background:
    Given the following contractor accounts exist
    | email              | first_name  | last_name | password | password_confirmation | address     | city            | state | country      | zip_code | role        |
    | contractor@ab.com  | Con         | Tractor   | 12345678 | 12345678              | 123 Con St  | Contractorville | CON   | Contractalia | 321345   | contractor  |

  Scenario:
    Given I am on the landing page
    And I click on "Contractor Log In"
    # Then I should see "Contractor Sign In Form"
    And I fill in field "Email" with "contractor@ab.com"
    And I fill in field "Password" with "12345678"
    And I click on "Sign In"
    Then I should see "Signed in successfully."

Feature: Register account for requester
  As a visitor,
  In order to post task postings,
  I need to be able to apply for a user account using my credentials.

  Scenario:
    Given I am on the landing page
    And I click on "Sign Up"
    Then I should see "Sign Up Form"
    And I fill in field "Email" with "requester@ab.com"
    And I fill in field "First name" with "John"
    And I fill in field "Last name" with "Doe"
    And I fill in field "Password" with "12345678"
    And I fill in field "Password confirmation" with "12345678"
    And I click on "Submit"
    Then I should see "Welcome! You have signed up successfully."

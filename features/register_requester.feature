Feature: Register account for requester
  As a visitor,
  In order to post task postings,
  I need to be able to apply for a user account using my credentials.

  Scenario:
    Given I am on the landing page
    And I click on "Requester Sign Up"
    Then I should see "Registration Form"
    And I fill in field "Email" with "requester@ab.com"
    And I fill in field "First Name" with "John"
    And I fill in field "Last Name" with "Doe"
    And I fill in field "Password" with "12345678"
    And I fill in field "Password Confirmation" with "12345678"
    And I click on "Submit"
    Then I should see "Welcome! You have signed up successfully."
    And the new user should be a requester

Feature: Contractor Registration
  As a contractor,
  In order to apply for task postings,
  I need to be able to apply for a contractor account using my credentials.

Scenario:
  Given I visit the landing page
  And I click link "Contractor Sign Up"
  Then I should see "Contractor Registration Form"
  When I fill in field "First Name" with "Bob"
  And I fill in field "Last Name" with "Jackson"
  And I fill in field "Email" with "bob@plumbing.com"
  And I fill in field "Password" with "12345678"
  And I fill in field "Password Confirmation" with "12345678"
  And I fill in field "Company" with "Bob's Plumbing Inc"
  And I fill in field "Address" with "6107 nw 183 ln"
  And I fill in field "City" with "Miami Lakes"
  And I fill in field "State" with "Florida"
  And I fill in field "Zip Code" with "33015"
  And I fill in field "Country" with "USA"
  And I fill in field "Experience" with "Plumber for the past 5 years"
  And I click on "Submit"
  Then I should see "Welcome! You have signed up successfully"


#Sad Path without email
Scenario:
  Given I visit the landing page
  And I click link "Contractor Sign Up"
  Then I should see "Contractor Registration Form"
  When I fill in field "First Name" with "Bob"
  And I fill in field "Last Name" with "Jackson"
  And I fill in field "Email" with ""
  And I fill in field "Password" with "12345678"
  And I fill in field "Password Confirmation" with "12345678"
  And I fill in field "Company" with "Bob's Plumbing Inc"
  And I fill in field "Address" with "6107 nw 183 ln"
  And I fill in field "City" with "Miami Lakes"
  And I fill in field "State" with "Florida"
  And I fill in field "Zip Code" with "33015"
  And I fill in field "Country" with "USA"
  And I click on "Submit"
  Then I should see "Email can't be blank"

Feature: As a contractor,
In order to apply for task postings,
I need to be able to apply for a contractor account using my credentials.


Scenario:
  Given I visit the landing page
  And I click link "Sign Up as a Contractor"
  Then I should see "Sign Up your company"
  When I fill in field "Name" with "Bob"
  And I fill in field "Last Name" with "Smith"
  And I fill in field "Phone" with "305-555-1122"
  And I fill in field "E-mail" with "bob@plumbing.com"
  And I fill in field "Street" with "6107 nw 183 ln"
  And I fill in field "City" with "Miami Lakes"
  And I fill in field "State" with "Florida"
  And I fill in field "Zip Code" with "33015"
  And I fill in field "Company" with "Bob's Plumbing Inc"
  And I click "Submit"
  Then I should see "Success! Next step is to confirm your account by clicking the link sent to you"

#Happy path without Company
  Scenario:
    Given I visit the landing page
    And I click link "Sign Up as a Contractor"
    Then I should see "Sign Up your company"
    When I fill in field "Name" with "Bob"
    And I fill in field "Last Name" with "Smith"
    And I fill in field "Phone" with "305-555-1122"
    And I fill in field "E-mail" with "bob@plumbing.com"
    And I fill in field "Street" with "6107 nw 183 ln"
    And I fill in field "City" with "Miami Lakes"
    And I fill in field "State" with "Florida"
    And I fill in field "Zip Code" with "33015"
    And I fill in field "Company" with ""
    And I click "Submit"
    Then I should see "Success! Next step is to confirm your account by clicking the link sent to you"


#Sad Path
Scenario:
  Given I visit the landing page
  And I click link "Sign Up as a Contractor"
  Then I should see "Sign Up your company"
  When I fill in field "Name" with ""
  And I fill in field "Last Name" with "Smith"
  And I fill in field "Phone" with "305-555-1122"
  And I fill in field "E-mail" with "bob@plumbing.com"
  And I fill in field "Street" with "6107 nw 183 ln"
  And I fill in field "City" with "Miami Lakes"
  And I fill in field "State" with "Florida"
  And I fill in field "Zip Code" with "33015"
  And I fill in field "Company" with "Bob's Plumbing Inc"
  And I click "Submit"
  Then I should see "You have to fill in required fields to "

#Sad Path
Scenario:
  Given I visit the landing page
  And I click link "Sign Up as a Contractor"
  Then I should see "Sign Up your company"
  When I fill in field "Name" with "Bob"
  And I fill in field "Last Name" with "Smith"
  And I fill in field "Phone" with "305-555-1122"
  And I fill in field "E-mail" with "bob@plumbing"
  And I fill in field "Street" with "6107 nw 183 ln"
  And I fill in field "City" with "Miami Lakes"
  And I fill in field "State" with "Florida"
  And I fill in field "Zip Code" with "33015"
  And I fill in field "Company" with "Bob's Plumbing Inc"
  And I click "Submit"
  Then I should see "You have to provide a valid email address"

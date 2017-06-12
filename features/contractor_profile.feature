Feature: Update profile information
  As a contractor,
  As my profile information changes
  I would like to have a form to update my profile

  Scenario: Update the address and experience
     Given the contractor exists with e-mail "con@a.com" and password "12345678" and is logged in
     And I click link "My Profile"
     Then I should see "Edit Contractor"
     And I should see field "Address" with value "6107 nw 183 ln"
     And I should see field "Experience" with value "This is my experience"
     Given I fill in field "Address" with "321 Another St"
     And I fill in field "Experience" with "5 years in plumming"
     And I fill in field "Current password" with "12345678"
     And I click on "Update"
     Then I should see "Your account has been updated successfully"
     Given I click link "My Profile"
     Then I should see field "Address" with value "321 Another St"
     And I should see field "Experience" with value "5 years in plumming"

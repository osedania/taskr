Feature: Update views
  As a user
  to get a better user experience
  it would be good to get some views updated

  Background:
    Given there are two reqesters having several tasks each belonging to some categories
    And the contractor exists with e-mail "con@a.com" and password "12345678" and is logged in

  Scenario: The common view of all tasks has a the requester full name and the description
    Given I visit the landing page
    And I click link "Current Available Tasks"
    Then I should see "Requester: James Bond"
    And I should see "pipe in kitchen broken"

  Scenario: A requester should be able to see any bids on a task from the 'View My Tasks' detail page
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote" with "500"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    And I click on "Log Out"
    And I log in as requester "requester2@r.com" with password "12345678"
    And I click on "View My Tasks"
    And I click on "Bad mowing machine"
    Then I should see "Bob Jackson"
    And I should see "500"

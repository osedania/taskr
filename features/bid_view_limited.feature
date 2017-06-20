Feature: Bid for task
  Only a contractor should see the form to place a bid

  Background:
    Given there are two reqesters having several tasks each belonging to some categories
    And the contractor exists with e-mail "con@a.com" and password "12345678" and is logged in

  Scenario: I should see bid form
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    Then I should see "Quote:"

  Scenario: As a requester I should NOT see the bid form
    Given I click on "Log Out"
    And I log in as requester "requester1@r.com" with password "12345678"
    And I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    Then I should not see "Quote:"

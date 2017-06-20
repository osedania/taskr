Feature: Bid for task
  As a contractor,
  In order to apply for task postings,
  I need to have an apply button and application process/view on each available task.

  Background:
    Given there are two reqesters having several tasks each belonging to some categories
    And the contractor exists with e-mail "con@a.com" and password "12345678" and is logged in

  Scenario: When an amount is quoted
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote" with "500"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    Then I should see "Bob Jackson's Bid: 500"

  Scenario: When an amount is quoted but ToS isn't checked
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote" with "500"
    And I click on "Make Offer"
    Then I should see "Please confirm you have read the Terms and Conditions"

  Scenario: When an amount is not quoted
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote" with ""
    And I click on "Make Offer"
    Then I should see "Please quote an amount"

  Scenario: When a contractor tries to make a second offer
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote" with "500"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    And I fill in field "Quote" with "700"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    Then I should see "Sorry you can only make one offer. Please update your current offer if you need to change your bid"
    Given I click on "Current Available Tasks"
    And I click on "Bad computer"
    And I fill in field "Quote" with "100"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    Then I should see "Bob Jackson's Bid: 100"

  Scenario: Link to Terms and Conditions
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I click on "Terms and Conditions"
    Then I should see "Terms and Conditons when placing a bid or accepting a bid."

  Scenario: Bid status changes to 'Bidding' when a task gets a bid
    Given I click on "Current Available Tasks"
    And I click on "Bad computer"
    Then I should see "Status: Open"
    Given I fill in field "Quote" with "500"
    And I check "I have read and agree to the" checkbox
    And I click on "Make Offer"
    And I click on "Current Available Tasks"
    And I click on "Bad computer"
    Then I should see "Status: Bidding"

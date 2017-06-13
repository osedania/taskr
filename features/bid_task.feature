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
    And I fill in field "Quote:" with "500"
    And I click on "Make Offer"
    Then I should see "Bob Jackson"
    And I should see "Bid: 500"

  Scenario: When an amount is not quoted
    Given I click on "Current Available Tasks"
    And I click on "Bad mowing machine"
    And I fill in field "Quote:" with ""
    And I click on "Make Offer"
    Then I should see "Please quote an amount"

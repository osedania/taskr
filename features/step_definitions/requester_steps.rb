Given(/^I log in as requester "([^"]*)" with password "([^"]*)"$/) do |email, password|
  steps %{
    Given I am on the landing page
    And I click on "Requester Log In"
    And I fill in field "Email" with "#{email}"
    And I fill in field "Password" with "#{password}"
    And I click on "Log In"
  }
end
#
Then(/^the new user should be a requester$/) do
  user = User.last
  expect(user.requester?).to eq true
end

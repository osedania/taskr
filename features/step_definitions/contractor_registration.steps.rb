Given(/^I click link "([^"]*)"$/) do |link|
click_link link('Sign Up as a Contractor')
end

When(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, arg|
   fill_in('field', with: 'arg')
 end

 When(/^I click "([^"]*)"$/) do |arg1|
   pending # Write code here that turns the phrase above into concrete actions
 end

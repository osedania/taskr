Given(/^I am on the landing page$/) do
  visit root_path
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Given(/^I click on "([^"]*)"$/) do |text|
  click_button text
end

Then(/^show page$/) do
  save_and_open_page
end

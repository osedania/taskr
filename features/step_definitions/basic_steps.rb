Given(/^I am on the landing page$/) do
  visit root_path
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Then(/^I should see field "([^"]*)" with value "([^"]*)"$/) do |field, value|
  expect(page).to have_field(field, with: value)
end

Given(/^I click on "([^"]*)"$/) do |text|
  click_link_or_button(text)
end

Given(/^I click link "([^"]*)"$/) do |link|
  click_link link
end

Then(/^show page$/) do
  save_and_open_page
end

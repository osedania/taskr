Given(/^I am logged in as "([^"]*)" and password "([^"]*)"$/) do |email, arg2|
  requester = Requester.find_by(email: email)
  login_as(requester, scope: :requester)
  visit root_path
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

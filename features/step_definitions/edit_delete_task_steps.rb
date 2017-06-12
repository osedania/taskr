Given(/^I am logged in as "([^"]*)" and password "([^"]*)"$/) do |email, arg2|
  binding.pry
  requester = Requester.find_by(email: email)
  login_as(requester, scope: :requester)
  visit root_path
end

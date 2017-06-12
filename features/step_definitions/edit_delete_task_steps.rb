Given(/^I am logged in as "([^"]*)" and password "([^"]*)"$/) do |email, arg2|

end
Given(/^I am logged in as "([^"]*)"$/) do |email|
  requester = Requester.find_by(email: email)
  login_as(requester, scope: :requester)
  visit root_path
end

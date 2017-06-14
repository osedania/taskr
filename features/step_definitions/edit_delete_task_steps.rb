Given(/^I am logged in as "([^"]*)"$/) do |email|
  requester = User.find_by(email: email)
  login_as(requester, scope: :requester)
  visit root_path
end


And(/^I delete "([^"]*)"$/) do |name|
  steps %Q{
    And I click link "#{name}"
  }
  @obj = Task.find_by(name: name)
  steps %q{
    And I click link "Delete task"
  }
end

And(/^the task should not be present in the database$/) do
  expect {
    @obj.reload
  }.to raise_error ActiveRecord::RecordNotFound
end

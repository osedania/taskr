Given(/^the task categories exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:task_category, hash)
  end
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |arg1, arg2|
  select(arg1, from: arg2)
end

Given(/^the task categories exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:task_category, hash)
  end
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |category, task_categories|
  select(category, from: task_categories)
end

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyString"
    location "MyString"
    minimum_budget 1
    maximum_budget 1
    task_category
    requester
  end
end

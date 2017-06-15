FactoryGirl.define do
  factory :task do
    user
    name "MyString"
    description "MyString"
    location "MyString"
    minimum_budget 1
    maximum_budget 1
    task_category
  end
end

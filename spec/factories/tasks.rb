FactoryGirl.define do
  factory :task do
    association :user, factory: :requester
    name "MyString"
    description "MyString"
    location "MyString"
    minimum_budget 1
    maximum_budget 1
    time_frame "ASAP"
    task_category
  end
end

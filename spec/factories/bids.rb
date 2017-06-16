FactoryGirl.define do
  factory :bid do
    association :user, factory: :contractor
    quote 1
    winning_bid 1
    task
  end
end

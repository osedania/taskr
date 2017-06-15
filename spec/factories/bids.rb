FactoryGirl.define do
  factory :bid do
    user
    quote 1
    winning_bid 1
    task
  end
end

FactoryGirl.define do
  factory :bid do
    # user {FactoryGirl.create(:contractor)}
    association :user, factory: :contractor
    quote 1
    winning_bid 1
    task
  end
end

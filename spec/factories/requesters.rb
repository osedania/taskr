FactoryGirl.define do
  factory :requester do
    email "test@example.com"
    first_name "Joe"
    last_name "Doe"
    password "password"
    password_confirmation "password"
  end
end

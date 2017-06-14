FactoryGirl.define do
  factory :user do
    email "jack@bay.com"
    first_name "Benj"
    last_name "Comey"
    password "12345678"
    password_confirmation "12345678"
    address "56, Sushi plaza"
    city "Temple Bay"
    state "Florida"
    zip_code "321345"
    country "USA"
    contractor_experience "my experience"
    contractor_description "my description"
    contractor true
    requester false
    admin false
    insurance "my insurance"
  end
end

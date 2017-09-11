FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "password"
    password_confirmation "password"
    first_name "first_name"
    last_name "last_name"
  end
end

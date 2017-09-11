FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "password"
    password_confirmation "password"
    first_name "first_name"
    last_name "last_name"
    #
    #
    # transient do
    #   user_tags_count 1
    # end

    # after(:create) do |user, evaluator|
    #   create_list(:user_tag, evaluator.user_tags_count, user: user)
    # end
  end


end

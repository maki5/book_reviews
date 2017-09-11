FactoryGirl.define do
  factory :review do
    body "test review"
    rating 5
    book_id 1
  end
end

FactoryGirl.define do
  factory :book do
    title "test book"
    author "test author"
    description "test description"
    image {  Rack::Test::UploadedFile.new("#{Rails.root}/spec/support/missing.png", 'image/png')  }
  end


end

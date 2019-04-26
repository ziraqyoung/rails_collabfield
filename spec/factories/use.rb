FactoryGirl.define do
  
  factory :user do
    sequence(:name) { |n| "test#{n}" }
    sequence(:email) {|n| "test#{n}@test.com"}
    password '12345'
    password_confirmation '12345'
  end

end
FactoryGirl.define do
  factory :post do
    title 'a' * 20
    content 'a' * 20
    
    #setting associations is simple for factory.
    user
    category
  end
end

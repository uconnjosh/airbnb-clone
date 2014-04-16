# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Shane"
    email "email@email.com"
    bio "I have a place"
    owner true
    password "password"
    password_confirmation { |user| user.password }

    factory :user_renter do
      owner false
      bio "I need a place"
    end
  end
end

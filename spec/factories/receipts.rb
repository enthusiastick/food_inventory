# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :receipt do
    description "MyText"
    quantity 1
    food_id 1
  end
end

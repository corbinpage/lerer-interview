# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :partner do
    name "MyString"
    description "MyText"
    owner "MyString"
    custom1 "MyText"
    custom2 "MyText"
    custom3 "MyText"
  end
end

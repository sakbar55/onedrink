# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    name "MyString"
    age 1
    about_me "MyText"
    profile_image_id 1
    user_id 1
  end
end

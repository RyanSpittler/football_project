FactoryGirl.define do
  factory :play do
    team { Faker::Lorem.word }
    play_type "MyString"
    direction "MyString"
    yards 1
  end
end

FactoryGirl.define do
  factory :play do
    team { Faker::Lorem.word }
    play_type { Play::VALID_PLAY_TYPES.sample }
    direction { Play::VALID_DIRECTIONS.sample }
    yards 1
  end
end

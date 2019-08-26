FactoryBot.define do
  factory :instrument_player_level, class: 'InstrumentPlayerLevels' do
    association :user

    factory :guitarist do
      instrument Instrument.find_by(name: "Guitar")

      trait :beginner do
        player_level PlayerLevel.find_by(name: "Beginner")
      end
    end
  end
end

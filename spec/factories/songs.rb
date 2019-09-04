require 'faker'

FactoryBot.define do
  factory :song do
    name { Faker::Hipster.sentence(word_count: 3, random_words_to_add: 3) }
    band

    factory :song_with_band do
      after(:create) do |song|
        song.band = FactoryBot.build(:band)
      end
    end

    factory :song_guitar do
      after(:create) do |song|
        song.instruments << FactoryBot.build(:instrument, :guitar)
      end
    end

  end
end

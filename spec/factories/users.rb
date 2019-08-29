require 'faker'

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }

    factory :guitarist do
      after(:create) do |user|
        user.instruments << FactoryBot.create(:instrument, :guitar)
      end
    end
  end
end

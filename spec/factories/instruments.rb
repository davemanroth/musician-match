FactoryBot.define do
  factory :instrument do
    name { "Instrument" }
    trait :guitar do
      name { "Guitar" }
    end
    
    trait :bass do
      name { "Bass" }
    end
    
    trait :drums do
      name { "Drums" }
    end
    
    trait :keyboard do
      name { "Keyboard" }
    end
    
    trait :vocals do
      name { "Vocals" }
    end
    
  end
end

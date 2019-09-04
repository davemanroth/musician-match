FactoryBot.define do
  factory :song_level do
    level { "Level" }
    
    trait :easy do
      level { "Easy" }
    end

    trait :meduim do
      level { "Medium" }
    end

    trait :medium_hard do
      level { "Medium-hard" }
    end

    trait :hard do
      level { "Hard" }
    end

    trait :really_hard do
      level { "Really hard" }
    end

    trait :insane do
      level { "Insane" }
    end

  end
end

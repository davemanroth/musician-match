FactoryBot.define do
  factory :instrument do
    id = Random.new.rand(1..5)
    name { Instrument.find(id) }
  end
end

class InstrumentPlayerLevel < ApplicationRecord
  belongs_to(:user)
  belongs_to(:instrument)
  belongs_to(:player_level)
end

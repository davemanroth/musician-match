class PlayerInstrument < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  has_many :player_instrument_levels
  has_many :player_levels, through: :player_instrument_levels
end

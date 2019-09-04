class SongInstrument < ApplicationRecord
  has_many :song_instrument_levels
  has_many :song_levels, through: :song_instrument_levels
  belongs_to :instrument
end

class Instrument < ApplicationRecord
  has_many(:instrument_song_levels)
end

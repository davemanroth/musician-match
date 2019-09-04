class SongInstrumentLevel < ApplicationRecord
  belongs_to :song_level
  belongs_to :song_instrument
end

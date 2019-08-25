class InstrumentSongLevel < ApplicationRecord
  belongs_to :song
  belongs_to :instrument
  belongs_to :song_level
  validates_presence_of :song, :instrument, :song_level
end

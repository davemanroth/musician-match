class Song < ApplicationRecord
  belongs_to :band
  has_many :instrument_song_levels
  validates_presence_of :name, :band
end

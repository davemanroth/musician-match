class Song < ApplicationRecord
  belongs_to :band
  has_many :song_instruments
  has_many :instruments, through: :song_instruments
  validates_presence_of :name, :band
end

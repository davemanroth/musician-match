class Instrument < ApplicationRecord
  validates_presence_of(:name)
  has_many :player_instruments
end

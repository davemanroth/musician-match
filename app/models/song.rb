class Song < ApplicationRecord
  belongs_to :band
  validates_presence_of :name
end

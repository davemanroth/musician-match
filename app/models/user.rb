class User < ApplicationRecord
  validates_presence_of(:first_name, :last_name, :email)
  validates :username, presence: true, uniqueness: true
  has_many :instrument_player_levels
  has_secure_password
end

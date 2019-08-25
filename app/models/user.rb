class User < ApplicationRecord
  validates_presence_of(:first_name, :last_name, :username, :email)
  has_many :instrument_player_levels
  has_secure_password
end

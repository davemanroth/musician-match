class User < ApplicationRecord
  validates_presence_of(:first_name, :last_name, :email)
  validates :username, presence: true, uniqueness: true
  has_many :player_instruments
  has_many :instruments, through: :player_instruments
  has_secure_password
end

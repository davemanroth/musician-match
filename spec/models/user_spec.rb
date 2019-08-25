require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:email) }
  it { should have_many(:instrument_player_levels) }
  it { should have_secure_password }

  context "Valid input" do
    user = User.create(first_name: "Dave", last_name: "Rothfarb", username: "davemanroth", email: "email", password_digest: "password")
    it "should be a valid user" do
      expect(user).to be_valid
    end
  end

  context "Invalid input" do
    user = User.create(first_name: "Dave", last_name: "Rothfarb")
    it "should NOT be a valid user" do
      expect(user).to_not be_valid
    end
  end

end

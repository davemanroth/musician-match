require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:username) }
  it { should have_many(:player_instruments) }
  it { should have_secure_password }

  context "Valid input" do
    user = FactoryBot.build(:user)
    it "should be a valid user" do
      expect(user).to be_valid
    end

    context "Valid guitarist" do
      it "should be a valid guitarist" do
        guitarist = FactoryBot.create(:guitarist)
        expect(guitarist).to be_valid
        expect(guitarist.instruments.length).to_not be 0
        expect(guitarist.instruments[0].name).to eq("Guitar")
      end
    end
  end

  context "Invalid input" do
    user = FactoryBot.build(:user)
    it "should not be a valid user without an email" do
      user.email = nil
      expect(user).to_not be_valid
    end

    it "should not allow 2 users with the same username" do
      user1 = FactoryBot.create(:user)
      user2 = FactoryBot.build(:user, username: user1.username)
      user2.save
      expect(user2.errors[:username]).to include("has already been taken")
    end
  end

end

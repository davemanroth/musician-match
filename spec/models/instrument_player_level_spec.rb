require 'rails_helper'

RSpec.describe InstrumentPlayerLevel, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:instrument) }
  it { should belong_to(:player_level) }

  context "Valid input" do
    it "should be a valid beginner guitarist" do
      guitarist = FactoryBot.build(:guitarist, :beginner)
      expect(guitarist).to be_valid
    end
  end
end

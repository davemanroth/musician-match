require 'rails_helper'

RSpec.describe Instrument, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:player_instruments) }

  let(:guitar) { FactoryBot.create(:instrument, :guitar) }

  it "should be a valid instrument" do
    expect(guitar).to be_valid
    expect(guitar.name).to eq("Guitar")
  end

  it "should not be a valid instrument without a name" do
    guitar.name = nil
    expect(guitar).to_not be_valid
  end
end

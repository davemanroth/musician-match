require 'rails_helper'

RSpec.describe Instrument, type: :model do
  it { should have_many(:player_instruments) }
  it "should be a valid instrument" do
    instr = FactoryBot.create(:instrument, :guitar)
    expect(instr).to be_valid
    expect(instr.name).to eq("Guitar")
  end
end

require 'rails_helper'

RSpec.describe SongInstrument, type: :model do
  it { should have_many(:song_instrument_levels) }

  song = FactoryBot.create(:song_guitar)

  it "should have a valid song_instrument association" do
    expect(song.song_instruments).to_not be_empty
  end

  it "should have a level of 'hard' associated with it" do
    si.song_levels << FactoryBot.build(:hard)
    expect(si.song_levels[0].name).to eq("Hard")
  end
end

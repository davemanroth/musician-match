require 'rails_helper'

RSpec.describe SongInstrumentLevel, type: :model do
  it { should belong_to :song_level }
  it { should belong_to :song_instrument }

  it "should have a difficulty level of 'Hard' associated with song and instrument" do
    song = FactoryBot.create(:song)
    guitar = FactoryBot.build(:instrument, :guitar)
    hard = FactoryBot.build(:song_level, :hard)
    song.instruments << guitar
    sg = song.song_instruments.find_by(instrument_id: guitar.id)
    sg.song_levels << hard
    expect(sg.song_levels.first.level).to eq("Hard")
  end
end

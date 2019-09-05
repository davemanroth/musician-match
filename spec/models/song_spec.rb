require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:band) }
  it { should have_many(:song_instruments) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:band) }

  context "Valid input" do
    before(:each) do
      @song = FactoryBot.create(:song)
    end
    it "Should be a vaild song" do
      expect(@song).to be_valid
    end

    it "should have a valid name" do
      expect(@song.name).to_not be_blank
    end

    it "should have a band associated with it" do
      expect(@song.band.name).to_not be_blank
    end

    it "should have guitar as an instrument" do
      guitar = FactoryBot.build(:instrument, :guitar)
      @song.instruments << guitar
      expect(@song.instruments[0].name).to eq("Guitar")
    end

    it "should have a difficulty level of 'Hard' associated with song and instrument" do
      guitar = FactoryBot.build(:instrument, :guitar)
      @song.instruments << guitar
      hard = FactoryBot.build(:song_level, :hard)
      sg = @song.song_instruments.find_by(instrument_id: guitar.id)
      sg.song_levels << hard
      expect(sg.song_levels.first.level).to eq("Hard")
    end
  end


  context "Invalid input" do
    before(:each) do
      @song = FactoryBot.create(:song)
    end
    
    it "Should be an invalid song" do
      @song.name = nil
      expect(@song).to_not be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:band) }
  it { should have_many(:instrument_song_levels) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:band) }

  context "Valid input" do
    band = Band.create(name: "Name")
    song = Song.create(name: "song", band: band)
    
    it "Should be a vaild song" do
      expect(song).to be_valid
    end
  end

  context "Invalid input" do
    song = Song.create(name: "song")
    
    it "Should be an invalid song" do
      expect(song).to_not be_valid
    end
  end
end

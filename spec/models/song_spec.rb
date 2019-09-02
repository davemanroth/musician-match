require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:band) }
  it { should have_many(:song_instruments) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:band) }

  context "Valid input" do
    song = FactoryBot.create(:song_with_band)

    it "Should be a vaild song" do
      expect(song).to be_valid
    end

    it "should have a valid name" do
      expect(song.name).to_not be_blank
    end

    it "should have a band associated with it" do
      expect(song.band.name).to_not be_blank
    end
  end

  context "Invalid input" do
    song = Song.create(name: "song")
    
    it "Should be an invalid song" do
      expect(song).to_not be_valid
    end
  end
end

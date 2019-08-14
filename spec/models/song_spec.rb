require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:band) }
  it { should validate_presence_of(:name) }

  context "Valid input" do
    band = Band.create(name: "Name")
    song = Song.create(name: "song", band_id: band.id)
    
    it "Should be a vaild song" do
      assert song.valid?
    end
  end
end

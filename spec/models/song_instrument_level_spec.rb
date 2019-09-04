require 'rails_helper'

RSpec.describe SongInstrumentLevel, type: :model do
  it { should belong_to :song_level }
  it { should belong_to :song_instrument }
end

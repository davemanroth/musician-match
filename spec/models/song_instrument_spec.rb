require 'rails_helper'

RSpec.describe SongInstrument, type: :model do
  it { should have_many(:song_instrument_levels) }
end

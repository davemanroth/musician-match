require 'rails_helper'

RSpec.describe Instrument, type: :model do
  it { should have_many(:instrument_song_levels) }
end

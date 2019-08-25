require 'rails_helper'

RSpec.describe SongLevel, type: :model do
  it { should have_many(:instrument_song_levels) }
end

require 'rails_helper'

RSpec.describe InstrumentSongLevel, type: :model do
  it { should belong_to (:song) }
  it { should belong_to (:instrument) }
  it { should belong_to (:song_level) }
  it { should validate_presence_of (:song) }
  it { should validate_presence_of (:instrument) }
  it { should validate_presence_of (:song_level) }
end

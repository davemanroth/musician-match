require 'rails_helper'

RSpec.describe PlayerInstrument, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:instrument) }
  it { should have_many(:player_instrument_levels) }
end

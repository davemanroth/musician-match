require 'rails_helper'

RSpec.describe PlayerInstrumentLevel, type: :model do
  it { should belong_to(:player_level) }
  it { should belong_to(:player_instrument) }
end

require 'rails_helper'

RSpec.describe PlayerLevel, type: :model do
  it { should have_one(:player_instrument_level) }
end

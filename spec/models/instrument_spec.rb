require 'rails_helper'

RSpec.describe Instrument, type: :model do
  it { should have_many(:player_instruments) }
end

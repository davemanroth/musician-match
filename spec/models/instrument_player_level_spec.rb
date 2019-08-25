require 'rails_helper'

RSpec.describe InstrumentPlayerLevel, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:instrument) }
  it { should belong_to(:player_level) }
end

require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should have_one(:band) }
  it { should validate_presence_of(:name) }
end

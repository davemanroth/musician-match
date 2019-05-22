require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:band) }
  it { should validate_presence_of(:name) }
end

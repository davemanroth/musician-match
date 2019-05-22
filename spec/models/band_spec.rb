require 'rails_helper'

RSpec.describe Band, type: :model do
  it { should have_many(:songs).dependent(:destroy) }
end

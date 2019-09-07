require 'rails_helper'

RSpec.describe Band, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:songs).dependent(:destroy) }

  let(:band) { FactoryBot.build(:band) }

  it "should be a valid band" do
    expect(band).to be_valid
  end

  it "should not be a valid band with a nil band name" do
    band.name = nil
    expect(band).to_not be_valid
  end
end

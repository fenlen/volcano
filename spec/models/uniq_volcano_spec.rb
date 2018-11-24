require 'rails_helper'

RSpec.describe UniqVolcano, type: :model do
  it "is not valid without a name" do
    volcano = UniqVolcano.first
    expect(volcano).to be_valid
  end
end

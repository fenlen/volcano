require 'rails_helper'

RSpec.describe Eruption, type: :model do
  it "is not valid without a year" do
    eruption = Eruption.first
    expect(eruption).to be_valid
  end
end

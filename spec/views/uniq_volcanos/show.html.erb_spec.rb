require 'rails_helper'

RSpec.describe "uniq_volcanos/show", type: :view do
  before(:each) do
    @uniq_volcano = assign(:uniq_volcano, UniqVolcano.create!(
      :Name => "MyText",
      :Location => "MyText",
      :Country => "MyText",
      :Latitude => "9.99",
      :Longitude => "9.99",
      :Elevation => 2,
      :Type => "MyText",
      :Status => "MyText",
      :Time => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

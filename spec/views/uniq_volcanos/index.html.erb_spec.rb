require 'rails_helper'

RSpec.describe "uniq_volcanos/index", type: :view do
  before(:each) do
    assign(:uniq_volcanos, [
      UniqVolcano.create!(
        :Name => "MyText",
        :Location => "MyText",
        :Country => "MyText",
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Elevation => 2,
        :Type => "MyText",
        :Status => "MyText",
        :Time => "MyText"
      ),
      UniqVolcano.create!(
        :Name => "MyText",
        :Location => "MyText",
        :Country => "MyText",
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Elevation => 2,
        :Type => "MyText",
        :Status => "MyText",
        :Time => "MyText"
      )
    ])
  end

  it "renders a list of uniq_volcanos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
    assert_select "tr>td", :text => "9.99".to_s, :count => 12
    assert_select "tr>td", :text => "9.99".to_s, :count => 12
    assert_select "tr>td", :text => 2.to_s, :count => 12
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
    assert_select "tr>td", :text => "MyText".to_s, :count => 12
  end
end

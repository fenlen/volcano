require 'rails_helper'

RSpec.describe "eruptions/index", type: :view do
  before(:each) do
    assign(:eruptions, [
      Eruption.create!(
        :year => 2,
        :month => 3,
        :day => 4,
        :tsu => false,
        :eq => false,
        :vei => 5,
        :agent => "MyText",
        :deaths => 6
      ),
      Eruption.create!(
        :year => 2,
        :month => 3,
        :day => 4,
        :tsu => false,
        :eq => false,
        :vei => 5,
        :agent => "MyText",
        :deaths => 6
      )
    ])
  end

  it "renders a list of eruptions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "eruptions/edit", type: :view do
  before(:each) do
    @eruption = assign(:eruption, Eruption.create!(
      :year => 1,
      :month => 1,
      :day => 1,
      :tsu => false,
      :eq => false,
      :vei => 1,
      :agent => "MyText",
      :deaths => 1
    ))
  end

  it "renders the edit eruption form" do
    render

    assert_select "form[action=?][method=?]", eruption_path(@eruption), "post" do

      assert_select "input[name=?]", "eruption[year]"

      assert_select "input[name=?]", "eruption[month]"

      assert_select "input[name=?]", "eruption[day]"

      assert_select "input[name=?]", "eruption[tsu]"

      assert_select "input[name=?]", "eruption[eq]"

      assert_select "input[name=?]", "eruption[vei]"

      assert_select "textarea[name=?]", "eruption[agent]"

      assert_select "input[name=?]", "eruption[deaths]"
    end
  end
end

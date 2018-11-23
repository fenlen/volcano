require 'rails_helper'

RSpec.describe "uniq_volcanos/new", type: :view do
  before(:each) do
    assign(:uniq_volcano, UniqVolcano.new(
      :Name => "MyText",
      :Location => "MyText",
      :Country => "MyText",
      :Latitude => "9.99",
      :Longitude => "9.99",
      :Elevation => 1,
      :Type => "MyText",
      :Status => "MyText",
      :Time => "MyText"
    ))
  end

  it "renders new uniq_volcano form" do
    render

    assert_select "form[action=?][method=?]", uniq_volcanos_path, "post" do

      assert_select "textarea[name=?]", "uniq_volcano[Name]"

      assert_select "textarea[name=?]", "uniq_volcano[Location]"

      assert_select "textarea[name=?]", "uniq_volcano[Country]"

      assert_select "input[name=?]", "uniq_volcano[Latitude]"

      assert_select "input[name=?]", "uniq_volcano[Longitude]"

      assert_select "input[name=?]", "uniq_volcano[Elevation]"

      assert_select "textarea[name=?]", "uniq_volcano[Type]"

      assert_select "textarea[name=?]", "uniq_volcano[Status]"

      assert_select "textarea[name=?]", "uniq_volcano[Time]"
    end
  end
end

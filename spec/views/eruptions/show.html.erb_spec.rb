require 'rails_helper'

RSpec.describe "eruptions/show", type: :view do
  before(:each) do
    @eruption = assign(:eruption, Eruption.create!(
      :year => 2,
      :month => 3,
      :day => 4,
      :tsu => false,
      :eq => false,
      :vei => 5,
      :agent => "MyText",
      :deaths => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/6/)
  end
end

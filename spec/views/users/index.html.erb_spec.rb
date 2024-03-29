require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
        User.create!(
            :name => "Name",
            :password => "Password1"
        ),
        User.create!(
            :name => "Name2",
            :password => "Password2"
        )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
  end
end

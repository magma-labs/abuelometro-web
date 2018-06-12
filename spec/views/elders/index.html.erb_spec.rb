require 'rails_helper'

RSpec.describe "elders/index", type: :view do
  before(:each) do
    assign(:elders, [
      Elder.create!(
        :elder_name => "Elder Name",
        :elder_first_name => "Elder First Name",
        :elder_last_name => "Elder Last Name",
        :elder_bloond_type => "Elder Bloond Type",
        :elder_weight => "9.99",
        :elder_height => "9.99"
      ),
      Elder.create!(
        :elder_name => "Elder Name",
        :elder_first_name => "Elder First Name",
        :elder_last_name => "Elder Last Name",
        :elder_bloond_type => "Elder Bloond Type",
        :elder_weight => "9.99",
        :elder_height => "9.99"
      )
    ])
  end

  it "renders a list of elders" do
    render
    assert_select "tr>td", :text => "Elder Name".to_s, :count => 2
    assert_select "tr>td", :text => "Elder First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Elder Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Elder Bloond Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

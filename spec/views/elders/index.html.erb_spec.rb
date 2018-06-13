require 'rails_helper'

RSpec.describe "elders/index", type: :view do
  before(:each) do
    assign(:elders, [
      Elder.create!(
        :name => "Elder Name",
        :first_name => "Elder First Name",
        :last_name => "Elder Last Name",
        :blood_type => "Elder Bloond Type",
        :weight => "9.99",
        :height => "9.99"
      ),
      Elder.create!(
        :name => "Elder Name",
        :first_name => "Elder First Name",
        :last_name => "Elder Last Name",
        :blood_type => "Elder Bloond Type",
        :weight => "9.99",
        :height => "9.99"
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

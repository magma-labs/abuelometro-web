require 'rails_helper'

RSpec.describe "elders/new", type: :view do
  before(:each) do
    assign(:elder, Elder.new(
      :elder_name => "MyString",
      :elder_first_name => "MyString",
      :elder_last_name => "MyString",
      :elder_bloond_type => "MyString",
      :elder_weight => "9.99",
      :elder_height => "9.99"
    ))
  end

  it "renders new elder form" do
    render

    assert_select "form[action=?][method=?]", elders_path, "post" do

      assert_select "input[name=?]", "elder[elder_name]"

      assert_select "input[name=?]", "elder[elder_first_name]"

      assert_select "input[name=?]", "elder[elder_last_name]"

      assert_select "input[name=?]", "elder[elder_bloond_type]"

      assert_select "input[name=?]", "elder[elder_weight]"

      assert_select "input[name=?]", "elder[elder_height]"
    end
  end
end

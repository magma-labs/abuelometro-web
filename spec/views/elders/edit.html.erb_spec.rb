require 'rails_helper'

RSpec.describe "elders/edit", type: :view do
  before(:each) do
    @elder = assign(:elder, Elder.create!(
      :name => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :blood_type => "MyString",
      :weight => "9.99",
      :height => "9.99"
    ))
  end

  it "renders the edit elder form" do
    render

    assert_select "form[action=?][method=?]", elder_path(@elder), "post" do

      assert_select "input[name=?]", "elder[name]"

      assert_select "input[name=?]", "elder[first_name]"

      assert_select "input[name=?]", "elder[last_name]"

      assert_select "input[name=?]", "elder[blood_type]"

      assert_select "input[name=?]", "elder[weight]"

      assert_select "input[name=?]", "elder[height]"
    end
  end
end

require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :profile_name => "MyString",
      :profile_first_name => "MyString",
      :profile_second_name => "MyString",
      :profile_phone => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[profile_name]"

      assert_select "input[name=?]", "profile[profile_first_name]"

      assert_select "input[name=?]", "profile[profile_second_name]"

      assert_select "input[name=?]", "profile[profile_phone]"
    end
  end
end

require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :profile_name => "MyString",
      :profile_first_name => "MyString",
      :profile_second_name => "MyString",
      :profile_phone => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[profile_name]"

      assert_select "input[name=?]", "profile[profile_first_name]"

      assert_select "input[name=?]", "profile[profile_second_name]"

      assert_select "input[name=?]", "profile[profile_phone]"
    end
  end
end

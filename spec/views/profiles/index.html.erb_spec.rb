require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :profile_name => "Profile Name",
        :profile_first_name => "Profile First Name",
        :profile_second_name => "Profile Second Name",
        :profile_phone => "Profile Phone"
      ),
      Profile.create!(
        :profile_name => "Profile Name",
        :profile_first_name => "Profile First Name",
        :profile_second_name => "Profile Second Name",
        :profile_phone => "Profile Phone"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Profile Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Phone".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :profile_name => "Profile Name",
      :profile_first_name => "Profile First Name",
      :profile_second_name => "Profile Second Name",
      :profile_phone => "Profile Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Profile Name/)
    expect(rendered).to match(/Profile First Name/)
    expect(rendered).to match(/Profile Second Name/)
    expect(rendered).to match(/Profile Phone/)
  end
end

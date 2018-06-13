require 'rails_helper'

RSpec.describe "elders/show", type: :view do
  before(:each) do
    @elder = assign(:elder, Elder.create!(
      :name => "Elder Name",
      :first_name => "Elder First Name",
      :last_name => "Elder Last Name",
      :blood_type => "Elder Bloond Type",
      :weight => "9.99",
      :height => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Elder Name/)
    expect(rendered).to match(/Elder First Name/)
    expect(rendered).to match(/Elder Last Name/)
    expect(rendered).to match(/Elder Bloond Type/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

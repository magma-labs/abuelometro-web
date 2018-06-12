require 'rails_helper'

RSpec.describe "Elders", type: :request do
  describe "GET /elders" do
    it "works! (now write some real specs)" do
      get elders_path
      expect(response).to have_http_status(200)
    end
  end
end

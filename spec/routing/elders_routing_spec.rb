require "rails_helper"

RSpec.describe EldersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/elders").to route_to("elders#index")
    end

    it "routes to #new" do
      expect(:get => "/elders/new").to route_to("elders#new")
    end

    it "routes to #show" do
      expect(:get => "/elders/1").to route_to("elders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/elders/1/edit").to route_to("elders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/elders").to route_to("elders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/elders/1").to route_to("elders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/elders/1").to route_to("elders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/elders/1").to route_to("elders#destroy", :id => "1")
    end

  end
end

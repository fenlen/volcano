require "rails_helper"

RSpec.describe EruptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/eruptions").to route_to("eruptions#index")
    end

    it "routes to #new" do
      expect(:get => "/eruptions/new").to route_to("eruptions#new")
    end

    it "routes to #show" do
      expect(:get => "/eruptions/1").to route_to("eruptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eruptions/1/edit").to route_to("eruptions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/eruptions").to route_to("eruptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/eruptions/1").to route_to("eruptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/eruptions/1").to route_to("eruptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eruptions/1").to route_to("eruptions#destroy", :id => "1")
    end
  end
end

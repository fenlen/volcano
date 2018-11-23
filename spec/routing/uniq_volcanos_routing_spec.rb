require "rails_helper"

RSpec.describe UniqVolcanosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/uniq_volcanos").to route_to("uniq_volcanos#index")
    end

    it "routes to #new" do
      expect(:get => "/uniq_volcanos/new").to route_to("uniq_volcanos#new")
    end

    it "routes to #show" do
      expect(:get => "/uniq_volcanos/1").to route_to("uniq_volcanos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/uniq_volcanos/1/edit").to route_to("uniq_volcanos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/uniq_volcanos").to route_to("uniq_volcanos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/uniq_volcanos/1").to route_to("uniq_volcanos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/uniq_volcanos/1").to route_to("uniq_volcanos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/uniq_volcanos/1").to route_to("uniq_volcanos#destroy", :id => "1")
    end
  end
end

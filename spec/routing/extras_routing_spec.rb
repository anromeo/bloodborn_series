require "spec_helper"

describe ExtrasController do
  describe "routing" do

    it "routes to #index" do
      get("/extras").should route_to("extras#index")
    end

    it "routes to #new" do
      get("/extras/new").should route_to("extras#new")
    end

    it "routes to #show" do
      get("/extras/1").should route_to("extras#show", :id => "1")
    end

    it "routes to #edit" do
      get("/extras/1/edit").should route_to("extras#edit", :id => "1")
    end

    it "routes to #create" do
      post("/extras").should route_to("extras#create")
    end

    it "routes to #update" do
      put("/extras/1").should route_to("extras#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/extras/1").should route_to("extras#destroy", :id => "1")
    end

  end
end

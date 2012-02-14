require "spec_helper"

describe ModeradorsController do
  describe "routing" do

    it "routes to #index" do
      get("/moderadors").should route_to("moderadors#index")
    end

    it "routes to #new" do
      get("/moderadors/new").should route_to("moderadors#new")
    end

    it "routes to #show" do
      get("/moderadors/1").should route_to("moderadors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/moderadors/1/edit").should route_to("moderadors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/moderadors").should route_to("moderadors#create")
    end

    it "routes to #update" do
      put("/moderadors/1").should route_to("moderadors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/moderadors/1").should route_to("moderadors#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe EpocasController do
  describe "routing" do

    it "routes to #index" do
      get("/epocas").should route_to("epocas#index")
    end

    it "routes to #new" do
      get("/epocas/new").should route_to("epocas#new")
    end

    it "routes to #show" do
      get("/epocas/1").should route_to("epocas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/epocas/1/edit").should route_to("epocas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/epocas").should route_to("epocas#create")
    end

    it "routes to #update" do
      put("/epocas/1").should route_to("epocas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/epocas/1").should route_to("epocas#destroy", :id => "1")
    end

  end
end

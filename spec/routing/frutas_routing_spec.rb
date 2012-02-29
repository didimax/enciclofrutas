require "spec_helper"

describe FrutasController do
  describe "routing" do

    it "routes to #index" do
      get("/frutas").should route_to("frutas#index")
    end

    it "routes to #new" do
      get("/frutas/new").should route_to("frutas#new")
    end

    it "routes to #show" do
      get("/frutas/1").should route_to("frutas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/frutas/1/edit").should route_to("frutas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/frutas").should route_to("frutas#create")
    end

    it "routes to #update" do
      put("/frutas/1").should route_to("frutas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/frutas/1").should route_to("frutas#destroy", :id => "1")
    end

  end
end

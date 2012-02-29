require "spec_helper"

describe MercadosController do
  describe "routing" do

    it "routes to #index" do
      get("/mercados").should route_to("mercados#index")
    end

    it "routes to #new" do
      get("/mercados/new").should route_to("mercados#new")
    end

    it "routes to #show" do
      get("/mercados/1").should route_to("mercados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mercados/1/edit").should route_to("mercados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mercados").should route_to("mercados#create")
    end

    it "routes to #update" do
      put("/mercados/1").should route_to("mercados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mercados/1").should route_to("mercados#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe VitaminasController do
  describe "routing" do

    it "routes to #index" do
      get("/vitaminas").should route_to("vitaminas#index")
    end

    it "routes to #new" do
      get("/vitaminas/new").should route_to("vitaminas#new")
    end

    it "routes to #show" do
      get("/vitaminas/1").should route_to("vitaminas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vitaminas/1/edit").should route_to("vitaminas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vitaminas").should route_to("vitaminas#create")
    end

    it "routes to #update" do
      put("/vitaminas/1").should route_to("vitaminas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vitaminas/1").should route_to("vitaminas#destroy", :id => "1")
    end

  end
end

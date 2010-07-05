require "spec_helper"

describe TelemetriesController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/telemetries" }.should route_to(:controller => "telemetries", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/telemetries/new" }.should route_to(:controller => "telemetries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/telemetries/1" }.should route_to(:controller => "telemetries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/telemetries/1/edit" }.should route_to(:controller => "telemetries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/telemetries" }.should route_to(:controller => "telemetries", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/telemetries/1" }.should route_to(:controller => "telemetries", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/telemetries/1" }.should route_to(:controller => "telemetries", :action => "destroy", :id => "1") 
    end

  end
end

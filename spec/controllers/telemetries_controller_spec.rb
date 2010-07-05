require 'spec_helper'

describe TelemetriesController do

  def mock_telemetry(stubs={})
    @mock_telemetry ||= mock_model(Telemetry, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all telemetries as @telemetries" do
      Telemetry.stub(:all) { [mock_telemetry] }
      get :index
      assigns(:telemetries).should eq([mock_telemetry])
    end
  end

  describe "GET show" do
    it "assigns the requested telemetry as @telemetry" do
      Telemetry.stub(:find).with("37") { mock_telemetry }
      get :show, :id => "37"
      assigns(:telemetry).should be(mock_telemetry)
    end
  end

  describe "GET new" do
    it "assigns a new telemetry as @telemetry" do
      Telemetry.stub(:new) { mock_telemetry }
      get :new
      assigns(:telemetry).should be(mock_telemetry)
    end
  end

  describe "GET edit" do
    it "assigns the requested telemetry as @telemetry" do
      Telemetry.stub(:find).with("37") { mock_telemetry }
      get :edit, :id => "37"
      assigns(:telemetry).should be(mock_telemetry)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created telemetry as @telemetry" do
        Telemetry.stub(:new).with({'these' => 'params'}) { mock_telemetry(:save => true) }
        post :create, :telemetry => {'these' => 'params'}
        assigns(:telemetry).should be(mock_telemetry)
      end

      it "redirects to the created telemetry" do
        Telemetry.stub(:new) { mock_telemetry(:save => true) }
        post :create, :telemetry => {}
        response.should redirect_to(telemetry_url(mock_telemetry))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved telemetry as @telemetry" do
        Telemetry.stub(:new).with({'these' => 'params'}) { mock_telemetry(:save => false) }
        post :create, :telemetry => {'these' => 'params'}
        assigns(:telemetry).should be(mock_telemetry)
      end

      it "re-renders the 'new' template" do
        Telemetry.stub(:new) { mock_telemetry(:save => false) }
        post :create, :telemetry => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested telemetry" do
        Telemetry.should_receive(:find).with("37") { mock_telemetry }
        mock_telemetry.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :telemetry => {'these' => 'params'}
      end

      it "assigns the requested telemetry as @telemetry" do
        Telemetry.stub(:find) { mock_telemetry(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:telemetry).should be(mock_telemetry)
      end

      it "redirects to the telemetry" do
        Telemetry.stub(:find) { mock_telemetry(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(telemetry_url(mock_telemetry))
      end
    end

    describe "with invalid params" do
      it "assigns the telemetry as @telemetry" do
        Telemetry.stub(:find) { mock_telemetry(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:telemetry).should be(mock_telemetry)
      end

      it "re-renders the 'edit' template" do
        Telemetry.stub(:find) { mock_telemetry(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested telemetry" do
      Telemetry.should_receive(:find).with("37") { mock_telemetry }
      mock_telemetry.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the telemetries list" do
      Telemetry.stub(:find) { mock_telemetry }
      delete :destroy, :id => "1"
      response.should redirect_to(telemetries_url)
    end
  end

end

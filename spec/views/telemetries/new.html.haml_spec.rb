require 'spec_helper'

describe "telemetries/new.html.haml" do
  before(:each) do
    assign(:telemetry, stub_model(Telemetry,
      :new_record? => true,
      :data => "MyText"
    ))
  end

  it "renders new telemetry form" do
    render

    rendered.should have_selector("form", :action => telemetries_path, :method => "post") do |form|
      form.should have_selector("textarea#telemetry_data", :name => "telemetry[data]")
    end
  end
end

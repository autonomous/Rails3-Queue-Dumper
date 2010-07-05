require 'spec_helper'

describe "telemetries/edit.html.haml" do
  before(:each) do
    @telemetry = assign(:telemetry, stub_model(Telemetry,
      :new_record? => false,
      :data => "MyText"
    ))
  end

  it "renders the edit telemetry form" do
    render

    rendered.should have_selector("form", :action => telemetry_path(@telemetry), :method => "post") do |form|
      form.should have_selector("textarea#telemetry_data", :name => "telemetry[data]")
    end
  end
end

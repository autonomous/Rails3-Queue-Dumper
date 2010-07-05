require 'spec_helper'

describe "telemetries/show.html.haml" do
  before(:each) do
    @telemetry = assign(:telemetry, stub_model(Telemetry,
      :data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("MyText".to_s)
  end
end

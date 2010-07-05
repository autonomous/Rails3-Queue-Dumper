require 'spec_helper'

describe "telemetries/index.html.haml" do
  before(:each) do
    assign(:telemetries, [
      stub_model(Telemetry,
        :data => "MyText"
      ),
      stub_model(Telemetry,
        :data => "MyText"
      )
    ])
  end

  it "renders a list of telemetries" do
    render
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end

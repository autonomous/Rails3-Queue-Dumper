require 'spec_helper'

describe ConsumerController do

  describe "GET 'munch'" do
    it "should be successful" do
      get 'munch'
      response.should be_success
    end
  end

end

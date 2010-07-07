class ConsumerController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def munch
    Telemetry.create!(:data => params.to_yaml)
    head(:ok)
  rescue => e
    logger.error e.backtrace
  end

end

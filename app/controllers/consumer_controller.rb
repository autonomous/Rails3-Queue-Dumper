class ConsumerController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def munch
    Telemetry.create!(:data => params[:json])
  rescue => e
    logger.error e.backtrace
  ensure
    head(:ok)
  end

end

class ConsumerController < ApplicationController

  def munch
    Telemetry.create!(:data => params.to_yaml)
    head(:ok)
  rescue => e
    logger.error e.backtrace
  end

end

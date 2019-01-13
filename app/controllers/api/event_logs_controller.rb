class Api::EventLogsController < Api::ApiController
  def create
    EventLogJob.new.perform(params)
  end
end
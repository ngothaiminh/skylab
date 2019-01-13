class SaveEventLogService
  attr_reader :params

  def initialize params
    @params = params
  end

  def perform
    EventLog.create(event_name: params[:event_name], timestamp: params[:timestamp])
  end
end

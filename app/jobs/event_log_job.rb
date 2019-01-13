class EventLogJob < ApplicationJob
  queue_as :default

  # we assume that we have a class CsvImporter to handle the import
  def perform(params)
    SaveEventLogService.new(params).perform
  end
end

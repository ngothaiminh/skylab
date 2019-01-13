class EventLog < ApplicationRecord
  validates :event_name, presence: true
end
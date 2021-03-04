class EventAttendee < ApplicationRecord
  # REREFENCES
  belongs_to :user
  belongs_to :event
  # VALIDATIONS
  # validates :streaming_link, presence: true, uniqueness: true
end

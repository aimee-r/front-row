class EventAttendee < ApplicationRecord
  # REREFENCES
  belongs_to :user
  belongs_to :event
  # VALIDATIONS

 
end

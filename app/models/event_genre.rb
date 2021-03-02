class EventGenre < ApplicationRecord
  belongs_to :event
  belongs_to :genre
  validates :event, uniqueness: { scope: :genre }
end

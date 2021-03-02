class Event < ApplicationRecord
  # REFERENCES
  belongs_to :user, through: :event_attendees
  # has_many :genres, through: :event_genres
  # VALIDATIONS
  validates :event_name, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :city, presence: true
  validates :country, presence: true
  # STRIPE
  # monetize :price_cents
end

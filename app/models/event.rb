class Event < ApplicationRecord
  has_rich_text :description

  # PG Search
  include PgSearch::Model
  multisearchable against: [:event_name, :city, :country]

  after_create :set_sku
  after_create :create_room
  has_one :room
  # CLOUDINARY
  has_one_attached :photo
  # REFERENCES
  has_many :event_attendees
  has_many :users, through: :event_attendees
  belongs_to :user
  has_many :event_genres, dependent: :destroy
  has_many :genres, through: :event_genres
  # VALIDATIONS
  validates :event_name, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :city, presence: true
  validates :country, presence: true
  # STRIPE
  monetize :price_cents

  def set_sku
    self.sku = "#{self.id}  #{self.event_name.gsub(" ", "-")}"
    self.save
  end

  def create_room
    Room.create(name: event_name, event: self)
  end
end

class User < ApplicationRecord
  has_rich_text :content

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true

  #PG Search
  include PgSearch::Model
  multisearchable against: [:artist_name]

  # REFERENCES
  has_one_attached :photo
  has_many :orders
  has_many :events, dependent: :destroy
  has_many :event_attendees
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

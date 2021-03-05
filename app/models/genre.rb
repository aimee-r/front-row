class Genre < ApplicationRecord
  #PG Search
  include PgSearch::Model
  multisearchable against: [:name]

  has_many :event_genres, dependent: :destroy
  has_many :events, through: :event_genres, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

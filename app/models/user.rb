class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # REFERENCES
  has_one_attached :photo
  has_many :orders
  has_many :events, dependent: :destroy
  has_many :event_attendees
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

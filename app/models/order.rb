class Order < ApplicationRecord
  # REFERENCES
  belongs_to :user
  belongs_to :event
  # STRIPE
  monetize :amount_cents
end

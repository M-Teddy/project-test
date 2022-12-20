class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :color, presence: true
  validates :price, presence: true
end

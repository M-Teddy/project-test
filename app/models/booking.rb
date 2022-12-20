class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :price, presence: true
end

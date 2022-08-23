class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :bikes, dependent: :destroy
  has_and_belongs_to_many :booking_bikes, trough: :bikes
end

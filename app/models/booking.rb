class Booking < ApplicationRecord
  # validates :title, presence: true
  # validates :body, presence: true
  # enum bookingStatuses:

  # validates :bookingnStatus, inclusion: { in: reservationStatuses }
  # validates :checkOutTime, presence: true
  # validates :expectedReturnTime, presence: true
  belongs_to :user
  belongs_to :bike
  has_many :bikes, dependent: :destroy
end

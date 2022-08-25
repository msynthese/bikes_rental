class Booking < ApplicationRecord
  # validates :bookingnStatus, inclusion: { in: reservationStatuses }
  # validates :checkOutTime, presence: true
  # validates :expectedReturnTime, presence: true
  belongs_to :user
  belongs_to :bike
  has_many :bikes, dependent: :destroy
  enum status: { pending: 0, confirmed: 1, rejected: 2, started: 3, completed: 4 }
  validates :status, inclusion: { in: statuses.keys, message: "is not valid." }


end

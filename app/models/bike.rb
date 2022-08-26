class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  enum category: { road: 0, mountain: 1, electric: 2 }
  enum size: { adult: 0, junior: 1 }

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: categories.keys, message: "{value} is not valid." }
  validates :size, presence: true, inclusion: { in: sizes.keys, message: "{value} is not valid." }
  validates :price, presence: true
  validates :address, presence: true
end

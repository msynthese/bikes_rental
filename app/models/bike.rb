class Bike < ApplicationRecord
  belongs_to :user

  enum category: { road: 0, mountain: 1, electric: 2 }
  enum size: { adult: 0, junior: 1 }

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: categories.keys, message: "{value} is not valid." }
  validates :size, presence: true, inclusion: { in: sizes.keys, message: "{value} is not valid." }
  validates :price, presence: true
  validates :location, presence: true

end

class Bike < ApplicationRecord
  belongs_to :usergit

  enum type: { road: 0, mountain: 1, electric: 2 }
  enum size: { adult: 0, junior: 1 }

  validates :name, presence: true
  validates :type, presence: true, inclusion: { in: types.keys, message: "{value} is not valid. Type must be one of #{types.keys}" }
  validates :size, presence: true, inclusion: { in: sizes.keys, message: "{value} is not valid. Type must be one of #{sizes.keys}" }
  validates :price, presence: true
  validates :location, presence: true

end

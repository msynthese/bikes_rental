class ChangeRenterToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :renter_id
    add_reference :bookings, :user, index: true
  end
end

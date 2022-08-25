class ChangeBookingStatusFromTextToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :status, :integer, using: 'status::integer'
  end
end

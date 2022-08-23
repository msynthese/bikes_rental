class AddDefaultNumberOfBookingsToBikes < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:bikes, :number_of_bookings, 0)
  end
end

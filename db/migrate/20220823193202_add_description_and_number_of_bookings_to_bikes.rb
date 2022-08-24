class AddDescriptionAndNumberOfBookingsToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :description, :text
    add_column :bikes, :number_of_bookings, :integer
  end
end

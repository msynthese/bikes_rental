class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :renter_id
      t.date :start_at
      t.date :end_at
      t.text :status
      t.integer :bike_id

      t.timestamps
    end
  end
end

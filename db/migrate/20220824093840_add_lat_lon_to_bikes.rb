class AddLatLonToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :lat, :float
    add_column :bikes, :lon, :float
  end
end

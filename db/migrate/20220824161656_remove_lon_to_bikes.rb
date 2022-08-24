class RemoveLonToBikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :bikes, :lon
    remove_column :bikes, :lat
  end
end

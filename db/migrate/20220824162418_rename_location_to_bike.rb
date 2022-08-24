class RenameLocationToBike < ActiveRecord::Migration[7.0]
  def change
    rename_column :bikes, :location, :address
  end
end

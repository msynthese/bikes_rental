class ChangeColumnBikesTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column(:bikes, :type, :category)
  end
end

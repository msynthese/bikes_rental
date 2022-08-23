class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.integer :category
      t.integer :size
      t.decimal :price, default: nil, precision: 10, scale: 2
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.string :picture_url

      t.timestamps
    end
  end
end

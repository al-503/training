class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.integer :preptime
      t.string :description
      t.references :restaurant_dishe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

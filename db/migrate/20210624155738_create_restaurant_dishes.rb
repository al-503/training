class CreateRestaurantDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_dishes do |t|
      t.references :dishe, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

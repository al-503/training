class CreateRestaurantMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_menus do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :speciality
      t.string :full_name
      t.string :phone_number
      t.string :chef
      t.references :menu, null: false, foreign_key: true
      t.references :dishe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

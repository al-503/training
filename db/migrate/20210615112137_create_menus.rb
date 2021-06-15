class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.float :price
      t.string :name
      t.references :dishe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

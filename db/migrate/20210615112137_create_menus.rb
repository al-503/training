class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.float :price
      t.string :name

      t.timestamps
    end
  end
end

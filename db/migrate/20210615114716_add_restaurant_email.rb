class AddRestaurantEmail < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :email, :string
  end
end

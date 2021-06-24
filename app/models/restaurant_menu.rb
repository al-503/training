class RestaurantMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :restaurant
end

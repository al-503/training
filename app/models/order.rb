class Order < ApplicationRecord
  belongs_to :rstaurant
  belongs_to :user
end

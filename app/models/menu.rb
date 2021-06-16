class Menu < ApplicationRecord
  
  has_one_attached :photo

  belongs_to :dishe
  belongs_to :restaurant
end

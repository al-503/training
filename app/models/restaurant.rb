class Restaurant < ApplicationRecord
  has_one_attached :photo

  belongs_to :menu
  belongs_to :dishe
end

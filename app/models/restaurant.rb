class Restaurant < ApplicationRecord
  belongs_to :menu
  belongs_to :dishe
  belongs_to :user

  has_many :order
end

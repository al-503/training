class Restaurant < ApplicationRecord
  belongs_to :menu
  belongs_to :dishe

  has_many :order
end

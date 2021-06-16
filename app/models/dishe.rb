class Dishe < ApplicationRecord

  has_one_attached :photo

  has_many :menu

end

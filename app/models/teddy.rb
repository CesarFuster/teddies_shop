class Teddy < ApplicationRecord
  monetize :price_cents

  belongs_to :category
  has_many :order_items
end

class Order < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
  has_many :order_products
  has_many :products, through: :order_products
end

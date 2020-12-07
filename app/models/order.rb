class Order < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
  has_many :order_products
  has_many :products, through: :order_products

  # def total
  #   item_costs = self.products.map do |product|
  #     product.ordered_quantity * product.price_kg.to_i || product.price_unit.to_i
  #   end

  #   item_costs.sum
  # end
end

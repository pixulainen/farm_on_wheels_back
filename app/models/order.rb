class Order < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
  has_many :order_products,  dependent: :destroy
  has_many :products, through: :order_products

  # def total
  #   item_costs = self.order_products.map do |op|
  #     op.quantity * self.products.price_kg.to_i || self.products.price_unit.to_i
  #   end

  #   item_costs.sum
  # end
end

class Order < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
  has_many :order_products
  has_many :products, through: :order_products

  def total
    item_costs = self.products.map do |pro|
      pro.stock * pro.price_kg.to_i || pro.price_unit.to_i
    end

    item_costs.sum
  end
end

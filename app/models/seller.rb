class Seller < ApplicationRecord
    has_secure_password
    acts_as_favoritable
    has_many :addresses, as: :addressable
    has_many :products, dependent: :destroy
    has_many :categories, through: :products
    has_many :orders
    has_many :order_products, through: :orders
end

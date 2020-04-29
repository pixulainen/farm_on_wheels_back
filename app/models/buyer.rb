class Buyer < ApplicationRecord
    has_secure_password
    has_many :addresses, as: :addressable
    has_many :orders
    has_many :order_products, through: :orders
    private 
   
end

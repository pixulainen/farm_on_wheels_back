class Buyer < ApplicationRecord
    has_secure_password
    acts_as_favoritor
    acts_as_favoritable
    has_many :addresses, as: :addressable
    has_many :orders
    has_many :order_products, through: :orders
    private 
    def fav(buyer,seller)
    buyer.favorite(seller)
    end
end

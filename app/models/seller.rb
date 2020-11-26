class Seller < ApplicationRecord
    has_secure_password

    has_many :addresses, as: :addressable
    has_many :products, dependent: :destroy
    has_many :categories, through: :products
    has_many :orders
    has_many :order_products, through: :orders
    validates :password, length: { in: 8..20 }
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :phone_number, presence: true,numericality: { only_integer: true },length:  { in: 8..12 }


end

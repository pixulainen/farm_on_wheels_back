class OrderSerializer < ActiveModel::Serializer
  attributes :id,:created_at,:total
  has_one :seller
  has_many :products
end

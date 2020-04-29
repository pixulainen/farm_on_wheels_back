class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :total
  has_one :order
  has_one :product
end

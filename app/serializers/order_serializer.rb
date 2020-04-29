class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_one :seller
  has_one :buyer
end

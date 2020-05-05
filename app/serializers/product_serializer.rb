class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price_unit, :price_kg, :quality, :stock, :picture,:seller_id,:category_id
end

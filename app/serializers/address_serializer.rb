class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :postcode, :city, :country, :house_number, :flat_number
  has_one :buyer
  has_one :seller
end

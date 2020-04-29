class SellerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :phone_number, :store_name, :store_description, :store_photos, :store_location
  has_many :products

end

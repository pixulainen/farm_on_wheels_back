class BuyerSerializer < ActiveModel::Serializer
    attributes :id, :username, :first_name, :last_name, :email, :phone_number,:all_favorited
    has_many :addresses, as: :addressable
    has_many :orders
  end
  
class Product < ApplicationRecord
  belongs_to :seller
  belongs_to :category
  scope :filter_by_category, -> (category_id) {where category_id: category_id}
  # scope :filter_by_starts_with, -> (name) { where("name like ?", "#{name}%")}

end

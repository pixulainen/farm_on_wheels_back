class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price_unit
      t.integer :price_kg
      t.string :quality
      t.integer :stock
      t.string :picture
      t.references :seller, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

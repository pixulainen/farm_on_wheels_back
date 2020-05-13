class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true
      t.string :total
      t.timestamps
    end
  end
end

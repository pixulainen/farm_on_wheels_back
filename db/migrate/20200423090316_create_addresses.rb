class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :postcode
      t.string :city
      t.string :country
      t.string :house_number
      t.string :flat_number
      t.references :addressable, polymorphic: true


      t.timestamps
    end
  end
end

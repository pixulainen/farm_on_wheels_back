class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :phone_number
      t.string :store_name
      t.string :store_description
      t.string :store_photos
      t.string :store_location

      t.timestamps
    end
  end
end

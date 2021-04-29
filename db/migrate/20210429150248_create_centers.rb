class CreateCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :centers do |t|
      t.references :zone, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :add_address, null: true
      t.string :city
      t.string :contact, null: true
      t.string :phone, null: true
      t.string :add_phone, null: true
      t.integer :postalcode
      t.string :mobile, null: true
      t.string :add_mobile, null:true
      t.string :email, null:true
      t.string :add_email, null:true
      t.string :web, null: true
      t.string :add_web, null:true
      t.text :desc, null:true

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :zone, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.integer :mindepth
      t.integer :maxdepth
      t.string :visibility
      t.string :currents
      t.boolean :is_spec
      t.string :image
      t.text :desc

      t.timestamps
    end
  end
end

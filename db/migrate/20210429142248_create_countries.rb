class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.references :zone, null: false, foreign_key: true
      t.string :name
      t.string :nicename
      t.string :iso
      t.string :iso3
      t.string :phonecode
      t.text :desc

      t.timestamps
    end
  end
end

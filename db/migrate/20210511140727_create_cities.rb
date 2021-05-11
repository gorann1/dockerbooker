class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.references :region, null: false, foreign_key: true
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end

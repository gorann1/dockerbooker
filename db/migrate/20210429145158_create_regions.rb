class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.references :country, null: false, foreign_key: true
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end

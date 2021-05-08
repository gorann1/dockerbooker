class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :zone
      t.string :country
      t.string :region
      t.string :type
      t.string :category

      t.timestamps
    end
  end
end

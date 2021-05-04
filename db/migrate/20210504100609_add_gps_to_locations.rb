class AddGpsToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :gps, :string
  end
end

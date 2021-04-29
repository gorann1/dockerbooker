class AddSuperadminToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :superadmin, :boolean
  end
end

class AddRoleToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :role, :boolean
  end
end

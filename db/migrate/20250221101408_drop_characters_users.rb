class DropCharactersUsers < ActiveRecord::Migration[8.0]
  def change
    drop_table :characters_users
  end
end

class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :level
      t.text :backstory
      t.integer :race
      t.integer :path
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

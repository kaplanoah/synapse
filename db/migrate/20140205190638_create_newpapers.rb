class CreateNewpapers < ActiveRecord::Migration
  def change
    create_table :newpapers do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.text :doi
      t.text :coordinatesystem
      t.text :journal

      t.timestamps
    end
  end
end

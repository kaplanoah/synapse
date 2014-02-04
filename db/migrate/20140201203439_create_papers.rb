class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.text :doi
      t.text :coordinatesystem
      t.decimal :zscore

      t.timestamps
    end
  end
end

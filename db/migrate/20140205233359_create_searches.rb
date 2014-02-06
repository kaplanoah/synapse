class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :x
      t.string :y
      t.string :z
      t.string :range

      t.timestamps
    end
  end
end

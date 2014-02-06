class RemoveZscoreFromPapers < ActiveRecord::Migration
  def change
  	remove_column :papers, :zscore, :decimal
  end
end

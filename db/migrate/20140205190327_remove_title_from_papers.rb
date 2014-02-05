class RemoveTitleFromPapers < ActiveRecord::Migration
  def change
    remove_column :papers, :title, :string
  end
end

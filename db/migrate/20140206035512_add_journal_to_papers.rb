class AddJournalToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :journal, :string
  end
end

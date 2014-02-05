class AddTitleAndAuthorAndEmailAndPhoneToNewpaper < ActiveRecord::Migration
  def change
    add_column :newpapers, :title, :string
    add_column :newpapers, :author, :string
    add_column :newpapers, :email, :string
    add_column :newpapers, :phone, :string
  end
end

class AddUserToSearch < ActiveRecord::Migration
  def change
    add_reference :searches, :user, index: true
  end
end

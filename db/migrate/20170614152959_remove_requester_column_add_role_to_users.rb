class RemoveRequesterColumnAddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :requester
    add_column :users, :role, :string
  end
end

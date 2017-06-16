class RemoveUserAdminColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :admin
  end
end

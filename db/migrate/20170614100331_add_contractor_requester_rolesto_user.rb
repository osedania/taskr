class AddContractorRequesterRolestoUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :requester, :boolean
    add_column :users, :contractor, :boolean
    add_column :users, :admin, :boolean
    remove_column :users, :role
  end
end

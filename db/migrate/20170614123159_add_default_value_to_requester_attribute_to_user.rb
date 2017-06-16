class AddDefaultValueToRequesterAttributeToUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :requester, :boolean, default: true
  end
end

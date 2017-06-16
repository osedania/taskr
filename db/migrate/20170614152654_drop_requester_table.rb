class DropRequesterTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :requester_id, :index
    drop_table :requesters
  end
end

class DropContractorTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :bids, :contractor_id, :index
    drop_table :contractors
  end
end

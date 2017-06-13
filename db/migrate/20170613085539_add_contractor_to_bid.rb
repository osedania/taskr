class AddContractorToBid < ActiveRecord::Migration[5.1]
  def change
    add_reference :bids, :contractor, index: true, foreign_key: true
  end
end

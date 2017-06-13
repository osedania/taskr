class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.integer :quote
      t.integer :winning_bid

      t.timestamps
    end
  end
end

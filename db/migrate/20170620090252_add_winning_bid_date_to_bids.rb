class AddWinningBidDateToBids < ActiveRecord::Migration[5.1]
  def change
    add_column :bids, :winning_bid_date, :datetime
  end
end

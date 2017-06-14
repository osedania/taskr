class AddAssosiationBetweenUserAndBids < ActiveRecord::Migration[5.1]
  def change
    add_reference :bids, :user, index: true, foreign_key: true
  end
end

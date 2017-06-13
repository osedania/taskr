class AddTasktoBid < ActiveRecord::Migration[5.1]
  def change
    add_reference :bids, :task, index: true, foreign_key: true
  end
end

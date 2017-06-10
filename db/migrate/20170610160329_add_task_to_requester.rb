class AddTaskToRequester < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :requester, foreign_key: true
  end
end

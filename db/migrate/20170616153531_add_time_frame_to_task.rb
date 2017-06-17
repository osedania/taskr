class AddTimeFrameToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :time_frame, :string
  end
end

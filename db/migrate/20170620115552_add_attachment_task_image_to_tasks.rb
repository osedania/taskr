class AddAttachmentTaskImageToTasks < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tasks do |t|
      t.attachment :task_image
    end
  end

  def self.down
    remove_attachment :tasks, :task_image
  end
end

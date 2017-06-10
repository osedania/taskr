class Task < ApplicationRecord
  belongs_to :task_category
  
  validates_presence_of :name, :description, :location
end

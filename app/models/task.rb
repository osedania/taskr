class Task < ApplicationRecord
  has_many :bids
  belongs_to :task_category
  belongs_to :user

  validates_presence_of :name, :description, :location, :user
end

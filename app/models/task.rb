class Task < ApplicationRecord
  has_many :bids
  belongs_to :task_category
  belongs_to :requester
  validates_presence_of :name, :description, :location, :requester_id
end

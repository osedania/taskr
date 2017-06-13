class Bid < ApplicationRecord
  belongs_to  :task
  belongs_to :contractor
  validates_presence_of :quote
end
